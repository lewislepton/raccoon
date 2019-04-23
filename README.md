![raccoon](image/raccoon.png)
# raccoon

This library is from the [Kha Tutorial Series Github](https://github.com/lewislepton/kha-tutorial-series) & the [Kha Tutorial Series YouTube Playlist](https://www.youtube.com/playlist?list=PL4neAtv21WOmmR5mKb7TQvEQHpMh1h0po)

This repo will be updated each time the library is updated in the series & built upon thru-out the series

# Install
Within terminal/command line & making sure haxe/haxelib is setup:

	haxelib git raccoon https://github.com/lewislepton/raccoon.git


# Update
Simply enter this in terminal/command line:

	haxelib upgrade

# How To Use?
In a Kha project, go to the `khafile.js` add put this in:

	project.addLibrary('raccoon');

You can then use the library in a Kha project

Also this library can be used locally in a project.

In the project folder that contains, `Sources`, `Assets` etc. Create another folder called `Libraries`. You can place the folder, which contains the `haxelib.js` & `Sources` of the library into the `Libraries` folder.

# Player Class Example
This player moves in all directions, with no downward velocity

	import kha.graphics2.Graphics;
	import kha.Color;
	import kha.input.KeyCode;

	import raccoon.Entity;

	class Player extends Entity {
		public var up:Bool;
		public var down:Bool;
		public var left:Bool;
		public var right:Bool;

		public function new(x:Float, y:Float, width:Float, height:Float){
			super(x, y, width, height);
			friction = 0.9;
		}

		override public function update(){
			super.update();

			if (!platformer){
				if (up){
					velocity.y = -1;
				} else if (down){
					velocity.y = 1;
				} else {
					velocity.y = 0;
				}
			}

			if (left){
				velocity.x = -1;
			} else if (right){
				velocity.x = 1;
			} else {
				velocity.x = 0;
			}
		}

		override public function render(graphics:Graphics){
			super.render(graphics);
			graphics.color = Color.Pink;
			graphics.fillRect(position.x, position.y, width, height);
		}

		public function onKeyDown(keyCode:KeyCode):Void {
			switch (keyCode){
				case KeyCode.Up: up = true;
				case KeyCode.Down: down = true;
				case KeyCode.Left: left = true;
				case KeyCode.Right: right = true;
			default: return;
			}
		}

		public function onKeyUp(keyCode:KeyCode):Void {
			switch (keyCode){
				case KeyCode.Up: up = false;
				case KeyCode.Down: down = false;
				case KeyCode.Left: left = false;
				case KeyCode.Right: right = false;
			default: return;
			}
		}
	}

# Particle Emitter Example

	import kha.Framebuffer;
	import kha.input.Mouse;

	import raccoon.particle.Emitter;

	class Project {
		var emitter:Emitter;

		public function new(){
			emitter = new Emitter();

			Mouse.get().notify(onMouseDown, null, null, null);
		}

		public function update():Void {
			emitter.update();
		}

		public function render(framebuffer:Framebuffer):Void {
			var graphics = framebuffer.g2;
			graphics.begin();
			emitter.render(graphics);
			graphics.end();
		}

		public function onMouseDown(button:Int, x:Int, y:Int):Void {
			emitter.spawn(x, y, 16, 8);
		}
	}

# Scene Example

	import kha.Canvas;
	import kha.input.Keyboard;
	import kha.input.KeyCode;

	import raccoon.State;

	import Player;

	class PlayState extends State {
		var player:Player;

		public function new(){
			player = new Player(32, 32, 32, 32);
			add(player);
		}

		override public function update():Void {
			super.update();
		}

		override public function render(canvas:Canvas):Void {
			super.render(canvas);
		}

		public function onKeyDown(keyCode:KeyCode):Void {
			switch(keycode){
				case A: remove(player);
				case B: add(player);
			}
		}
	}

All the best, have phün & happy coding

[Lewis Lepton](https://lewislepton.com)