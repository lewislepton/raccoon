import raccoon.App;
import raccoon.State;

import state.KeyboardMovementDemo;
import state.ParticlesDemo;
import state.ShadersDemo;
import state.UIDemo;

class Tests extends App {
  public function new(){
    super();
    State.addState('keyboard', new KeyboardMovementDemo());
    State.addState('particles', new ParticlesDemo());
    State.addState('shaders', new ShadersDemo());
    State.addState('ui', new UIDemo());
    State.set('shaders');
  }
}