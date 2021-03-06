﻿package me.rainssong.controls
{


	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextFieldAutoSize;



	public class MyCheckBox extends MovieClip implements IToggleBtn
	{


		public function MyCheckBox(selected:Boolean=false)
		{
			// constructor code
			stop();
			try{
				this["labelTF"].autoSize = TextFieldAutoSize.LEFT;
			}
			catch (e:Error) {
				
			}

			this.addEventListener(MouseEvent.CLICK, onClick);
			
			this.addEventListener(Event.REMOVED_FROM_STAGE, onRemove);

		}
		
		

		protected function onClick(e:MouseEvent):void
		{
			switchStatus();
		}

		protected function onRemove(e:Event):void
		{
			this.removeEventListener(Event.REMOVED_FROM_STAGE, onRemove);
			this.removeEventListener(MouseEvent.CLICK, onClick);
		}

		public function switchStatus():void
		{
			if (this.currentFrame == 1)
			{
				this.gotoAndStop(2);
			}
			else
			{
				this.gotoAndStop(1);
			}
		}


		public function select():void
		{
			gotoAndStop(2);
		}
		
		public function unselect():void
		{
			gotoAndStop(1);
		}

		public function get selected():Boolean
		{
			return this.currentFrame==2;
		}
		
		public function set selected(value:Boolean):void
		{
			gotoAndStop(value?2:1);
		}

		public function get label():String
		{
			if (["labelTF"])
			{
				return this["labelTF"].text;
			}
			else
			{
				return "";
			}
		}

		public function set label(content:String):void
		{
			if (["labelTF"])
			{
				this["labelTF"].text = content;
			}

		}


	}

}