package state;

import kha.Assets;
import kha.input.KeyCode;
import kha.Canvas;
import kha.Shaders;

import raccoon.State;
import raccoon.glsl.Shader;

import char.Player;

class ShadersDemo extends State {
  var player:Player;
  var shader:Shader;

  public function new(){
    super();
    player = new Player(128, 128, 128, 128);
    shader = new Shader(Shaders.color_frag);
  }

  override public function update(){
    player.update();
  }

  override public function render(canvas:Canvas){
    shader.begin(canvas);
    player.render(canvas);
    shader.end(canvas);
  }

  override public function onKeyDown(keyCode:KeyCode){
    player.onKeyDown(keyCode);
  }

  override public function onKeyUp(keyCode:KeyCode){
    player.onKeyUp(keyCode);
  }
}