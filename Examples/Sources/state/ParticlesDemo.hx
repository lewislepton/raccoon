package state;

import kha.Canvas;

import raccoon.State;
import raccoon.particle.Emitter;

class ParticlesDemo extends State {
  var emitter:Emitter;

  public function new(){
    super();
    emitter = new Emitter();
  }

  override public function update(){
    emitter.update();
  }

  override public function render(canvas:Canvas){
    emitter.render(canvas);
  }

  override public function onMouseDown(button:Int, x:Int, y:Int):Void {
    emitter.spawn(x, y, 16, 16);
  }
}