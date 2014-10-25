package src 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class Platform extends Sprite
	{
		private var currentPos :Number;
		
		public function Platform() 
		{
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