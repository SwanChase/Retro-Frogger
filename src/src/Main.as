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
	 * @author arnoud
	 */
	public class Main extends Sprite 
	{
		private var frog : Frogger;
		private var backGround : Background = new Background;
		private var water : Water = new Water;
		private var road : Road = new Road;
		
		private var cars : Array;
		
		private var platforms : LogPlatform;
		
		
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var makeCarTimer:Timer = new Timer(500, 2);
			
			makeCarTimer.addEventListener(TimerEvent.TIMER, CarTimerListener);
			
			function CarTimerListener (e:TimerEvent):void
			{
				newRaceCar();
			}
			
			cars = [];
			
			frog = new Frogger();
			water = new Water();
			backGround = new Background();
			platforms = new LogPlatform();
			
			water.x = 0;
			water.y = 0;
			water.scaleX = 1;
			water.scaleY = 1;
			
			backGround.x = 0;
			backGround.y = 0;
			backGround.scaleX = 1;
			backGround.scaleY = 1;
			
			frog.x = 110;
			frog.y = 320;
			frog.scaleX = 1;
			frog.scaleY = 1;
			
			
			platforms.y = 170;
			
			addChild(water);
			addChild(backGround);
			addChild(platforms);
			addChild(frog);
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
		}
		
		private function update(e:Event):void 
		{
			var j : int	= cars.length;
			
			for (var k : int = j - 1; k >= 0 ; k--)
			{
				cars[k].update();
			}
		}
		private function newRaceCar():void
		{
			var newRaceCar: RaceCar = new RaceCar();
			addChild(newRaceCar);
			
			newRaceCar.x = stage.stageWidth / 2;
			newRaceCar.x = stage.stageHeight / 2;
			
			
			cars.push(newRaceCar);
		}
		
		private function keyUp(e:KeyboardEvent):void 
		{
			
		}
		
		private function keyDown(e:KeyboardEvent):void 
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