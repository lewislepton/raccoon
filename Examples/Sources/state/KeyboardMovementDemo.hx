package state;

import kha.input.KeyCode;
import kha.Canvas;

import raccoon.State;

import char.Player;

class KeyboardMovementDemo extends State {
  var player:Player;

  public function new(){
    super();
    player = new Player(128, 128, 128, 128);
  }

  override public function update(){
    player.update();
  }

  override public function render(canvas:Canvas){
    player.render(canvas);
  }

  override public function onKeyDown(keyCode:KeyCode){
    player.onKeyDown(keyCode);
  }

  override public function onKeyUp(keyCode:KeyCode){
    player.onKeyUp(keyCode);
  }
}