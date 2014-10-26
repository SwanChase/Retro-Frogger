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
		private var player : Player;
		private var playerDeath : FrogDeath;
		private var backGround : Background;
		private var water : Water;
		private var finish : Finish;
		private var road : Road;
		
		private var cars : Array;
		
		public var platforms : LogPlatform;
		
		
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, update);
			//addEventListener(Event.ENTER_FRAME, hitTestObject);
		}
		
		/*public function hitTestObject(stage:player):Boolean
		{
			while (cars.hitTestObject(player))
			{
				playerDeath = new FrogDeath();
				addChild(playerDeath);
			}
			
			while (platforms.hitTestObject(player))
			{
				player.x += 5;
			}
		}*/
		
		public function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var makeCarTimer:Timer = new Timer(500, 2);
			
			makeCarTimer.addEventListener(TimerEvent.TIMER, CarTimerListener);
			
			function CarTimerListener (e:TimerEvent):void
			{
				addEventListener(Event.ACTIVATE,newRaceCar);
			}
			
			cars = [];
			
			road = new Road();
			player = new Player();
			water = new Water();
			finish = new Finish();
			backGround = new Background();
			platforms = new LogPlatform();
			
			
			water.x = 0;
			water.y = 0;
			water.scaleX = 1;
			water.scaleY = 1;
			
			water.x = 0;
			water.y = 0;
			
			backGround.x = 0;
			backGround.y = 0;
			backGround.scaleX = 1;
			backGround.scaleY = 1;
			
			platforms.y = 175;
			
			addChild(road);
			addChild(water);
			addChild(finish);
			addChild(backGround);
			addChild(platforms);
			addChild(player);
			
		}
		
		private function update(e:Event):void 
		{
			/*var j : int	= cars.length;
			
			for (var k : int = j - 1; k >= 0 ; k--)
			{
				cars[k].update();
			}*/
		}
		
		private function newRaceCar():void
		{
			var newRaceCar: RaceCar = new RaceCar();
			addChild(newRaceCar);
			
			newRaceCar.x = stage.stageWidth / 2;
			newRaceCar.x = stage.stageHeight / 2;
			
			
			cars.push(newRaceCar);
		}
		
	}
	
}