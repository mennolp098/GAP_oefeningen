package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Ball extends Vehicle
	{
		
		// de class 'Ball' extend de Vehicle. Hierdoor heeft hij functies zoals 'seek'
		// ook andere objecten kunnen nu eenvoudig de Vehicle class extenden
		public function Ball(color:uint, size:int, speed:Number, mass:Number ) 
		{
			this.graphics.beginFill(color);
			this.graphics.lineStyle(1, color);
			this.graphics.lineTo(-size/2, -size/2);
			this.graphics.lineTo(-size/2, size/2);
			this.graphics.lineTo(0, 0);
						
			this.maxSpeed	=	speed;
			this.mass		=	mass;
		}
	}

}