package char;

import kha.Canvas;
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
  }

  override public function update(){
    super.update();

    if (up){
      velocity.y = -1;
    } else if (down){
      velocity.y = 1;
    } else {
      velocity.y = 0;
    }

    if (left){
      velocity.x = -1;
    } else if (right){
      velocity.x = 1;
    } else {
      velocity.x = 0;
    }
  }

  override public function render(canvas:Canvas){
    super.render(canvas);
    canvas.g2.color = Color.Pink;
    canvas.g2.fillRect(position.x, position.y, width, height);
  }

  public function onKeyDown(keyCode:KeyCode):Void {
    switch (keyCode){
      case Up: up = true;
      case Down: down = true;
      case Left: left = true;
      case Right: right = true;
    default: return;
    }
  }

  public function onKeyUp(keyCode:KeyCode):Void {
    switch (keyCode){
      case Up: up = false;
      case Down: down = false;
      case Left: left = false;
      case Right: right = false;
    default: return;
    }
  }
}