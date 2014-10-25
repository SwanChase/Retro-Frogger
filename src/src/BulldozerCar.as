package src 
{
	import flash.events.Event;
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class BulldozerCar extends Car
	{
		private var bulldozer : Car2;
		
		public function BulldozerCar() 
		{
			
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			bulldozer = new Car2();
			bulldozer.scaleX = 1;
			bulldozer.scaley = 1;
			
			addChild(bulldozer);
			
			addEventListener(Event.ENTER_FRAME, privateUpdate);
		}
		
		private function privateUpdate(e:Event):void
		{
			var l : int = 220;
			
			this.x = x + 5;
			
			if (l == x)
			{
				x = -90;
			}
			
		}
		
	}

}