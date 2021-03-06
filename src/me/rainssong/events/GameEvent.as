package me.rainssong.events
{
	import flash.events.Event;
	import me.rainssong.events.DataEvent;
	
	/**
	 * ...
	 * @author Rainssong
	 */
	public class GameEvent extends ApplicationEvent
	{
		static public const GAME_START:String = "gameStart";
		
		static public const GAME_OVER:String = "gameOver";
		
		static public const SUBMIT_SCORE:String = "submitScore";
		
		static public const SHOW_HIGH_SCORE:String = "showHighScore";
		static public const LOAD:String = "load";
		static public const SAVE:String = "save";
		static public const RESET:String = "reset";
	
		
		public function GameEvent(type:String,data:*=null, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type,data, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new GameEvent(type,data, bubbles, cancelable);
		}
		
		public override function toString():String
		{
			return formatToString("GameEvent","data", "type", "bubbles", "cancelable", "eventPhase");
		}
	
	}

}