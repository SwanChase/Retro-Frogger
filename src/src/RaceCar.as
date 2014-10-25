package src 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class RaceCar extends Car
	{
		private var raceCar : Car1;
		
		public function RaceCar() 
		{
			raceCar = new Car1();
			
			addChild(raceCar);
		}
		
	}

}