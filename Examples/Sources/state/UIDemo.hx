package state;

import kha.Canvas;

import raccoon.State;
import raccoon.ui.Button;
import raccoon.ui.Toggle;

class UIDemo extends State {
  var uiButton:Button;
  var uiToggle:Toggle;

  public function new(){
    super();

    uiButton = new Button(320, 320, 128, 128);
    uiButton.onClick = buttonPrint;

    uiToggle = new Toggle(640, 320, 128, 128);
  }

  override public function update(){
    if (uiToggle.isOn){
      togglePrint();
    }
  }

  override public function render(canvas:Canvas){
    uiButton.render(canvas);
    uiToggle.render(canvas);
  }

  override function onMouseDown(button:Int, x:Int, y:Int) {
    uiButton.onButtonDown(x, y);
    uiToggle.onToggleDown(x, y);
  }

  public function buttonPrint(){
    trace('button element has been clicked');
  }

  public function togglePrint(){
    trace('toggle element is on');
  }
}