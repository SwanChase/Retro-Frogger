package src 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class Road extends Sprite
	{
		private var direction : int;
		private var speed : int = 1;
		
		
		protected var car : Car;
		
		public function Road():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			car = new Car();
			addChild(car);
			
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e:Event):void 
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