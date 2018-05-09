package states;

import extension.leaderboards.Leaderboards;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import ids.LeaderboardIds;
import openfl.Lib;
import openfl.events.Event;

#if gamecircleleaderboards
import extension.leaderboards.GameCircleLeaderboards;
import listener.DemoGameCircleListener;
#end

#if googleplayleaderboards
import extension.leaderboards.GooglePlayLeaderboards;
import listener.DemoGooglePlayListener;
#end

class PlayState extends FlxState {
	private var eventText:FlxText; // Event log text in top left of screen

	/**
	 * Setup the demo state
	 */
	override public function create():Void {
		super.create();
		bgColor = FlxColor.BLACK;
		
		eventText = new FlxText(0, 0, 0, "Event log...");
		add(eventText);
		
		Lib.current.stage.addEventListener(Event.ACTIVATE, function(p:Dynamic):Void {
			addText("App received ACTIVATE event");
		});
		Lib.current.stage.addEventListener(Event.DEACTIVATE, function(p:Dynamic):Void {
			addText("App received DEACTIVATE event");
		});
		
		#if gamecircleleaderboards
		addText("Will set GameCircle listener");
		GameCircleLeaderboards.get.setListener(new DemoGameCircleListener(this));
		#end
		
		#if googleplayleaderboards
		addText("Will set Google Play listener");
		GooglePlayLeaderboards.get.setListener(new DemoGooglePlayListener(this));
		#end
		
		Leaderboards.init();
		
		Leaderboards.signIn();
		
		add(new BigButton("Open Leaderboards", function() {
			addText("Will attempt to open leaderboards");
			Leaderboards.openLeaderboard(LeaderboardIds.DEMO_LEADERBOARD_ID);
		}, 100, Std.int(FlxG.height / 2)));
		
		add(new BigButton("Open Achievements", function() {
			addText("Will attempt to open achievements ");
			Leaderboards.openAchievements();
		}, FlxG.width - 100, Std.int(FlxG.height / 2)));
	}
	
	/**
	 * Add a message to the text event log
	 */
	public function addText(text:String):Void {
		eventText.text = text + "\n" + eventText.text;
	}
	
	/**
	 * Clear the event log
	 */
	private function clearLog():Void {
		eventText.text = "Waiting...";
	}
}

class BigButton extends FlxButton {
	public function new(text:String, onPress:Void->Void, x:Int, y:Int) {
		super(x, y, text, onPress);
		scale.set(2, 2);
		updateHitbox();
	}
}