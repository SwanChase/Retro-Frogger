package src 
{
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class LogPlatform extends Platform
	{
		
		public function LogPlatform() 
		{
			log1 = new Log1();
			
			log2 = new Log2();
			log2.y = log1.y - 40;
			
			log3 = new Log3();
			log3.y = log2.y - 40;
			
			
			turtle1 = new Turtle1();
			turtle1.y = -15;
			turtle1.x = 220;
			
			turtle2 = new Turtle2();
			turtle2.y = turtle1.y - 40;
			turtle2.x = turtle1.x;
			
			turtle3 = new Turtle3();
			turtle3.y = turtle2.y - 40;
			turtle3.x = turtle2.x;
			
			
			addChild(log1);
			addChild(log2);
			addChild(log3);
			
			addChild(turtle1);
			addChild(turtle2);
			addChild(turtle3);
			
		}
		
	}

}