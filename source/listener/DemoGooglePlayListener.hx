package listener;

import states.PlayState;

#if googleplayleaderboards

import extension.googleplaygames.GooglePlayListener;

import leaderboards.Achievements;

class GameGooglePlayListener extends GooglePlayListener {
	private var game:PlayState;
	
	override public function new(game:PlayState) {
		super();
		this.game = game;
	}
	
	override public function onConnected() {
		game.addText("On connection established");
		
		super.onConnected();
	}
	
	override public function onDisconnected() {
		game.addText("On disconnected");
		
		super.onDisconnected();
	}
	
	override public function onConnectionSuspended(reason:Int) {
		game.addText("On connection suspended for reason " + reason);
		
		super.onConnectionSuspended(reason);
	}
	
	override public function onConnectionFailed(errorCode:Int) {
		game.addText("On connection failed for reason " + errorCode);
		
		super.onConnectionFailed(errorCode);
	}
	
	override public function onActivityResult(requestCode:Int, resultCode:Int) {
		game.addText("On activity result with request code " + requestCode + " and result code " + resultCode);
		
		super.onActivityResult(requestCode, resultCode);
	}
}

#end