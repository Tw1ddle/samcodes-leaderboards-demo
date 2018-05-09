package listener;

import states.PlayState;

#if gamecircleleaderboards

import extension.gamecircle.GameCircleListener;

class DemoGameCircleListener extends GameCircleListener {
	private var game:PlayState;
	
	override public function new(game:PlayState) {
		super();
		this.game = game;
	}

	override public function onWarning(msg:String, where:String) {
		game.addText("Warning - " + msg + " - " + where);
		
		super.onWarning(msg, where);
	}

	override public function onError(what:String, errorCode:Int, where:String) {
		game.addText("Error - " + what + " - " + errorCode + " - " + where);
		
		super.onError(what, errorCode, where);
	}

	override public function onException(msg:String, where:String) {
		game.addText("Exception - " + msg + " - " + where);
		
		super.onException(msg, where);
	}

	override public function onConnectionEstablished() {
		game.addText("On connection established");
		
		super.onConnectionEstablished();
	}
	
	override public function onSignedIn() {
		game.addText("On signed in");
		
		super.onSignedIn();
	}

	override public function onSignedOut() {
		game.addText("On signed out");
		
		super.onSignedOut();
	}
}

#end