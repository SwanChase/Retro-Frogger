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
		public var log1 : Log1 = new Log1;
		public var log2 : Log2 = new Log2;
		public var log3 : Log3 = new Log3;
		
		public var turtle1 : Turtle1 = new Turtle1;
		public var turtle2 : Turtle2 = new Turtle2;
		public var turtle3 : Turtle3 = new Turtle3;
		
		private var currentPos :Number;
		
		public function Platform() 
		{
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e:Event):void 
		{
			var l : int = 220;
			var t : int = -90;
			
			log3.x = log3.x + 3;
			log2.x = log2.x + 1;
			log1.x = log1.x + 2;
			
			turtle3.x = turtle3.x - 3;
			turtle2.x = turtle2.x - 1;
			turtle1.x = turtle1.x - 2;
			
			
			//LOGS------------------------------------>
			if (l == log1.x)
			{
				log1.x = -92;
			}
			if (l == log2.x)
			{
				log2.x = t;
			}
			if (222 == log3.x)
			{
				log3.x = -93;
			}
			//TURTLES--------------------------------->
			if (t == turtle1.x)
			{
				turtle1.x = l;
			}
			if (t == turtle2.x)
			{
				turtle2.x = l;
			}
			if (-92 == turtle3.x)
			{
				turtle3.x = l;
			}
			
		}
		
	}

}