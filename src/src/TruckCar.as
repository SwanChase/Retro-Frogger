package src 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Swan Chase
	 */
	public class TruckCar extends Car
	{
		private var truck : Truck;
			
		public function TruckCar() 
		{
			truck = new Truck();
			
			truck.x = 0;
			truck.y = 80;
			truck.scaleX = 1;
			truck.scaleY = 1;
			
			addChild(truck);
		}
		
	}

}