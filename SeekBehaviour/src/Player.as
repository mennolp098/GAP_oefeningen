package  
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author Menno Jongejan
	 */
	public class Player extends Sprite
	{
		private var dPressed:Boolean;
		private var sPressed:Boolean;
		private var wPressed:Boolean;
		private var aPressed:Boolean;
		private var maxSpeed:Number;
		
		public function Player(container:DisplayObjectContainer) 
		{
			var size : int = 30;
			this.graphics.beginFill(0x00FF00);
			this.graphics.lineStyle(1, 0x00FF00);
			this.graphics.lineTo(-size/2, -size/2);
			this.graphics.lineTo(-size/2, size/2);
			this.graphics.lineTo(0, 0);
			this.x = container.stage.stageWidth / 2;
			this.y = container.stage.stageHeight / 2;
			maxSpeed	=	10;
			container.stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			container.stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
		}
		
		private function keyUp(e:KeyboardEvent):void 
		{
			if (e.keyCode == Keyboard.A)
			{
				aPressed = false;
			}
			if (e.keyCode == Keyboard.D)
			{
				dPressed = false;
			}
			if (e.keyCode == Keyboard.S)
			{
				sPressed = false;
			}
			if (e.keyCode == Keyboard.W)
			{
				wPressed = false;
			}
		}
		
		private function keyDown(e:KeyboardEvent):void 
		{
			if (e.keyCode == Keyboard.A)
			{
				aPressed = true;
			}
			if (e.keyCode == Keyboard.D)
			{
				dPressed = true;
			}
			if (e.keyCode == Keyboard.S)
			{
				sPressed = true;
			}
			if (e.keyCode == Keyboard.W)
			{
				wPressed = true;
			}
		}
		public function update()
		{
			if (dPressed) //right
			{
				this.x += maxSpeed;
			}
			if (sPressed) //down
			{
				this.y += maxSpeed;
			}
			if (wPressed) //up
			{
				this.y -= maxSpeed;
			}
			if (aPressed) //left
			{
				this.x -= maxSpeed;
			}
		}
		
	}
}