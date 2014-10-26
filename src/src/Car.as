package src 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class Car extends Sprite
	{
		private var direction : int;
		private var speed : int = 1;
		
		protected var currentPos :Number;
		
		private var raceCar : RaceCar;
		private var bulldozer : BulldozerCar;
		private var truck : TruckCar;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, update);
		}
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			raceCar = new RaceCar();
			bulldozer = new BulldozerCar();
			truck = new TruckCar();
			
			raceCar.x = 0;
			raceCar.y = -40;
			raceCar.scaleX = 1;
			raceCar.scaleY = 1;
			addChild(raceCar);
			
			bulldozer.x = 0;
			bulldozer.y = 80;
			bulldozer.scaleX = 1;
			bulldozer.scaleY = 1;
			addChild(bulldozer);
			
			truck.x = 0;
			truck.y = 80;
			truck.scaleX = 1;
			truck.scaleY = 1;
			addChild(truck);
			trace(truck);
		}
		
		private function update(e:Event):void
		{
			var l : int = 220;
			
			raceCar.x = x + 5;
			bulldozer.x = x + 5;
			truck.x = x + 5;
			
			trace(truck.x);
			if (l == x)
			{
				x = -90;
			}
		}
		
	}

}