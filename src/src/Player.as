package src 
{
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class Player extends Sprite
	{
		private var frog : Frogger;
		private var lastFrog : LastFrog;
		private var frogCount : int = 0;
		
		
		public function Player() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			frog = new Frogger();
			
			
			frog.x = 110;
			frog.y = 320;
			frog.scaleX = 1;
			frog.scaleY = 1;
			addChild(frog);
			
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
			stage.addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e:Event):void 
		{
			//trace(frog.x, frog.y);
			/*if (frog.y <= 180)
			{
				frog.y = 320;
				frog.x = 110
			}*/
			
			if(frog.x == 27, frog.y == 20)
			{
				lastFrog = new LastFrog();
				lastFrog.y = 20;
				lastFrog.x = 27;
				addChild(lastFrog);
				
			}
			if(frog.x == 70, frog.y == 20)
			{
				lastFrog = new LastFrog();
				lastFrog.y = 20;
				lastFrog.x = 70;
				addChild(lastFrog);
			}
			
			if(frog.x == 110, frog.y == 20)
			{
				lastFrog = new LastFrog();
				lastFrog.y = 20;
				lastFrog.x = 110;
				addChild(lastFrog);
			}
			
			if(frog.x == 154, frog.y == 20)
			{
				lastFrog = new LastFrog();
				lastFrog.y = 20;
				lastFrog.x = 154;
				addChild(lastFrog);
			}
			
			if(frog.x == 196, frog.y == 20)
			{
				lastFrog = new LastFrog();
				lastFrog.y = 20;
				lastFrog.x = 196;
				addChild(lastFrog);
			}
			
			else if (lastFrog != null)
			{
				while (true)
				{
					
				if (frogCount >= 1) 
				{ 
					trace("hi");
					frog.x = 110;
					frog.y = 320;
					break;	
				} 
				frogCount ++;
				
				}
			}
			
		}
		
		private function keyUp(e:KeyboardEvent):void 
		{
			
		}
		
		public function keyDown(e:KeyboardEvent):void 
		{
			
			if (e.keyCode == 38)
			{
				frog.y -= 20;
				frog.rotation = 0;
				
			}
			if (e.keyCode == 40)
			{
				frog.y += 20;
				frog.rotation = 180;
			}
			if (e.keyCode == 39)
			{
				frog.x += 20;
				frog.rotation = 90;
			}
			if (e.keyCode == 37)
			{
				frog.x -= 20;
				frog.rotation = -90;
			}
			
		}
		
	}
	
}