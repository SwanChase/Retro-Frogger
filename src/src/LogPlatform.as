package src 
{
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class LogPlatform extends Platform
	{
		private var log : Log;
		
		public function LogPlatform() 
		{
			log = new Log();
			log.scaleX = 1;
			log.scaley = 0.01;
			
			addChild(log);
		}
		
	}

}