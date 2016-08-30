package states;

import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import openfl.Lib;
import openfl.events.Event;

class PlayState extends FlxState {
	private var eventText:FlxText; // Event log text in top left of screen

	/**
	 * Setup the demo state
	 */
	override public function create():Void {
		super.create();
		bgColor = FlxColor.BLACK;
		
		eventText = new FlxText();
		add(eventText);
		
		addText("Press some buttons...");
		
		Lib.current.stage.addEventListener(Event.ACTIVATE, function(p:Dynamic):Void {
			addText("App received ACTIVATE event");
			#if (android || ios)
			addText("Current badge count is reported as: " + Notifications.getApplicationIconBadgeNumber());
			#end
		});
		Lib.current.stage.addEventListener(Event.DEACTIVATE, function(p:Dynamic):Void {
			addText("App received DEACTIVATE event");
		});
	}
	
	/**
	 * Update the state
	 */
	override public function update(dt:Float):Void {
		super.update(dt);
	}
	
	/**
	 * Add a message to the text event log
	 */
	private function addText(text:String):Void {
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
	public function new(text:String, onPress:Void->Void) {
		super(text, onPress);
		scale.set(2, 2);
		updateHitbox();
	}
}