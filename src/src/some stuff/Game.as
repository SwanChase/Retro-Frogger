package src.some stuff stuff
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class Game extends Sprite
	{
	private var cars : Road;

		
		public function Game() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			
			cars = new Road;
			cars.x = stage.stageWidth / 2;
			cars.y = stage.stageHeight - 40;
			
			addChild(cars);
		}
		private function update(e:Event):void
		{
			
			
		}
		
	}

}