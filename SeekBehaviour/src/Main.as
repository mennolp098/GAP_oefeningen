package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Main extends Sprite 
	{
		
		private var ball01 : Ball;
		private var ball02 : Ball;
		private var ball03 : Ball;
		private var ball04 : Ball;
		private var player : Player;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			
			ball01 = new Ball(0xFF0000, 30, 10, 5);
			ball02 = new Ball(0x0000FF, 25, 7, 7);
			ball03 = new Ball(0xFFFF00, 27, 8, 10);
			ball04 = new Ball(0xFFFFFF, 25, 12, 13);
			player = new Player(this);
			
			addChild(ball01);
			addChild(ball02); 
			addChild(ball04);
			addChild(ball03);
			addChild(player);
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e : Event) : void
		{
			
			ball01.seek(new Vector2D(player.x, player.y));
			ball02.seek(new Vector2D(ball01.x, ball01.y));
			ball03.seek(new Vector2D(player.x, player.y));
			ball04.seek(new Vector2D(ball03.x, ball03.y));
			
			
			
			player.update();
			ball01.update();
			ball02.update();
			ball03.update();
			ball04.update();
		}
		
	}
	
}