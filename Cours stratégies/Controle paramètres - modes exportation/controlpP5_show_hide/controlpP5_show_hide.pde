import controlP5.*;

ControlP5 cp5;
//int myColor = color(0, 0, 0);

int sliderValueBrightness = 100; // valeur par défaut
float sliderValueHeight = 0.5; // valeur par défaut
float posLigne;

void setup() {
  size(800,600);
  noStroke();
  cp5 = new ControlP5(this);

  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValueBrightness' 
  cp5.addSlider("sliderValueBrightness")
    .setPosition(100, 40)
    .setRange(0, 255)
    ;
    
  cp5.addSlider("sliderValueHeight")
    .setPosition(100, 60)
    .setRange(0, 1)
    ;
}

void draw() {
  background(0);

  fill(sliderValueBrightness);
  rect(0, 0, width, height);
  
  fill(map(sliderValueBrightness,0,255,255,0));
  posLigne = map(sliderValueHeight, 0, 1, height-2, 100+2);
  rect(0, posLigne - 2, width, 4);
  
  if (cp5.getController("sliderValueBrightness").isVisible() || cp5.getController("sliderValueHeight").isVisible()) {
    fill(0,100);
    rect(0,0,width, 100);
  }
  
}


void keyPressed() {
  if (key == 'h') {
    if (cp5.getController("sliderValueBrightness").isVisible() || cp5.getController("sliderValueHeight").isVisible()) {
      cp5.getController("sliderValueBrightness").hide();
      cp5.getController("sliderValueHeight").hide();
    } else {
      cp5.getController("sliderValueBrightness").show();
      cp5.getController("sliderValueHeight").show();
    }
  }
}














/**
 * ControlP5 Slider
 *
 *
 * find a list of public methods available for the Slider Controller
 * at the bottom of this sketch.
 *
 * by Andreas Schlegel, 2012
 * www.sojamo.de/libraries/controlp5
 *
 */

/*
a list of all methods available for the Slider Controller
 use ControlP5.printPublicMethodsFor(Slider.class);
 to print the following list into the console.
 
 You can find further details about class Slider in the javadoc.
 
 Format:
 ClassName : returnType methodName(parameter type)
 
 
 controlP5.Controller : CColor getColor() 
 controlP5.Controller : ControlBehavior getBehavior() 
 controlP5.Controller : ControlWindow getControlWindow() 
 controlP5.Controller : ControlWindow getWindow() 
 controlP5.Controller : ControllerProperty getProperty(String) 
 controlP5.Controller : ControllerProperty getProperty(String, String) 
 controlP5.Controller : ControllerView getView() 
 controlP5.Controller : Label getCaptionLabel() 
 controlP5.Controller : Label getValueLabel() 
 controlP5.Controller : List getControllerPlugList() 
 controlP5.Controller : Pointer getPointer() 
 controlP5.Controller : Slider addCallback(CallbackListener) 
 controlP5.Controller : Slider addListener(ControlListener) 
 controlP5.Controller : Slider addListenerFor(int, CallbackListener) 
 controlP5.Controller : Slider align(int, int, int, int) 
 controlP5.Controller : Slider bringToFront() 
 controlP5.Controller : Slider bringToFront(ControllerInterface) 
 controlP5.Controller : Slider hide() 
 controlP5.Controller : Slider linebreak() 
 controlP5.Controller : Slider listen(boolean) 
 controlP5.Controller : Slider lock() 
 controlP5.Controller : Slider onChange(CallbackListener) 
 controlP5.Controller : Slider onClick(CallbackListener) 
 controlP5.Controller : Slider onDoublePress(CallbackListener) 
 controlP5.Controller : Slider onDrag(CallbackListener) 
 controlP5.Controller : Slider onDraw(ControllerView) 
 controlP5.Controller : Slider onEndDrag(CallbackListener) 
 controlP5.Controller : Slider onEnter(CallbackListener) 
 controlP5.Controller : Slider onLeave(CallbackListener) 
 controlP5.Controller : Slider onMove(CallbackListener) 
 controlP5.Controller : Slider onPress(CallbackListener) 
 controlP5.Controller : Slider onRelease(CallbackListener) 
 controlP5.Controller : Slider onReleaseOutside(CallbackListener) 
 controlP5.Controller : Slider onStartDrag(CallbackListener) 
 controlP5.Controller : Slider onWheel(CallbackListener) 
 controlP5.Controller : Slider plugTo(Object) 
 controlP5.Controller : Slider plugTo(Object, String) 
 controlP5.Controller : Slider plugTo(Object[]) 
 controlP5.Controller : Slider plugTo(Object[], String) 
 controlP5.Controller : Slider registerProperty(String) 
 controlP5.Controller : Slider registerProperty(String, String) 
 controlP5.Controller : Slider registerTooltip(String) 
 controlP5.Controller : Slider removeBehavior() 
 controlP5.Controller : Slider removeCallback() 
 controlP5.Controller : Slider removeCallback(CallbackListener) 
 controlP5.Controller : Slider removeListener(ControlListener) 
 controlP5.Controller : Slider removeListenerFor(int, CallbackListener) 
 controlP5.Controller : Slider removeListenersFor(int) 
 controlP5.Controller : Slider removeProperty(String) 
 controlP5.Controller : Slider removeProperty(String, String) 
 controlP5.Controller : Slider setArrayValue(float[]) 
 controlP5.Controller : Slider setArrayValue(int, float) 
 controlP5.Controller : Slider setBehavior(ControlBehavior) 
 controlP5.Controller : Slider setBroadcast(boolean) 
 controlP5.Controller : Slider setCaptionLabel(String) 
 controlP5.Controller : Slider setColor(CColor) 
 controlP5.Controller : Slider setColorActive(int) 
 controlP5.Controller : Slider setColorBackground(int) 
 controlP5.Controller : Slider setColorCaptionLabel(int) 
 controlP5.Controller : Slider setColorForeground(int) 
 controlP5.Controller : Slider setColorLabel(int) 
 controlP5.Controller : Slider setColorValue(int) 
 controlP5.Controller : Slider setColorValueLabel(int) 
 controlP5.Controller : Slider setDecimalPrecision(int) 
 controlP5.Controller : Slider setDefaultValue(float) 
 controlP5.Controller : Slider setHeight(int) 
 controlP5.Controller : Slider setId(int) 
 controlP5.Controller : Slider setImage(PImage) 
 controlP5.Controller : Slider setImage(PImage, int) 
 controlP5.Controller : Slider setImages(PImage, PImage, PImage) 
 controlP5.Controller : Slider setImages(PImage, PImage, PImage, PImage) 
 controlP5.Controller : Slider setLabel(String) 
 controlP5.Controller : Slider setLabelVisible(boolean) 
 controlP5.Controller : Slider setLock(boolean) 
 controlP5.Controller : Slider setMax(float) 
 controlP5.Controller : Slider setMin(float) 
 controlP5.Controller : Slider setMouseOver(boolean) 
 controlP5.Controller : Slider setMoveable(boolean) 
 controlP5.Controller : Slider setPosition(float, float) 
 controlP5.Controller : Slider setPosition(float[]) 
 controlP5.Controller : Slider setSize(PImage) 
 controlP5.Controller : Slider setSize(int, int) 
 controlP5.Controller : Slider setStringValue(String) 
 controlP5.Controller : Slider setUpdate(boolean) 
 controlP5.Controller : Slider setValue(float) 
 controlP5.Controller : Slider setValueLabel(String) 
 controlP5.Controller : Slider setValueSelf(float) 
 controlP5.Controller : Slider setView(ControllerView) 
 controlP5.Controller : Slider setVisible(boolean) 
 controlP5.Controller : Slider setWidth(int) 
 controlP5.Controller : Slider show() 
 controlP5.Controller : Slider unlock() 
 controlP5.Controller : Slider unplugFrom(Object) 
 controlP5.Controller : Slider unplugFrom(Object[]) 
 controlP5.Controller : Slider unregisterTooltip() 
 controlP5.Controller : Slider update() 
 controlP5.Controller : Slider updateSize() 
 controlP5.Controller : String getAddress() 
 controlP5.Controller : String getInfo() 
 controlP5.Controller : String getName() 
 controlP5.Controller : String getStringValue() 
 controlP5.Controller : String toString() 
 controlP5.Controller : Tab getTab() 
 controlP5.Controller : boolean isActive() 
 controlP5.Controller : boolean isBroadcast() 
 controlP5.Controller : boolean isInside() 
 controlP5.Controller : boolean isLabelVisible() 
 controlP5.Controller : boolean isListening() 
 controlP5.Controller : boolean isLock() 
 controlP5.Controller : boolean isMouseOver() 
 controlP5.Controller : boolean isMousePressed() 
 controlP5.Controller : boolean isMoveable() 
 controlP5.Controller : boolean isUpdate() 
 controlP5.Controller : boolean isVisible() 
 controlP5.Controller : float getArrayValue(int) 
 controlP5.Controller : float getDefaultValue() 
 controlP5.Controller : float getMax() 
 controlP5.Controller : float getMin() 
 controlP5.Controller : float getValue() 
 controlP5.Controller : float[] getAbsolutePosition() 
 controlP5.Controller : float[] getArrayValue() 
 controlP5.Controller : float[] getPosition() 
 controlP5.Controller : int getDecimalPrecision() 
 controlP5.Controller : int getHeight() 
 controlP5.Controller : int getId() 
 controlP5.Controller : int getWidth() 
 controlP5.Controller : int listenerSize() 
 controlP5.Controller : void remove() 
 controlP5.Controller : void setView(ControllerView, int) 
 controlP5.Slider : ArrayList getTickMarks() 
 controlP5.Slider : Slider setColorTickMark(int) 
 controlP5.Slider : Slider setHandleSize(int) 
 controlP5.Slider : Slider setHeight(int) 
 controlP5.Slider : Slider setMax(float) 
 controlP5.Slider : Slider setMin(float) 
 controlP5.Slider : Slider setNumberOfTickMarks(int) 
 controlP5.Slider : Slider setRange(float, float) 
 controlP5.Slider : Slider setScrollSensitivity(float) 
 controlP5.Slider : Slider setSize(int, int) 
 controlP5.Slider : Slider setSliderMode(int) 
 controlP5.Slider : Slider setTriggerEvent(int) 
 controlP5.Slider : Slider setValue(float) 
 controlP5.Slider : Slider setWidth(int) 
 controlP5.Slider : Slider showTickMarks(boolean) 
 controlP5.Slider : Slider shuffle() 
 controlP5.Slider : Slider snapToTickMarks(boolean) 
 controlP5.Slider : Slider update() 
 controlP5.Slider : TickMark getTickMark(int) 
 controlP5.Slider : float getMax() 
 controlP5.Slider : float getMin() 
 controlP5.Slider : float getValue() 
 controlP5.Slider : float getValuePosition() 
 controlP5.Slider : int getDirection() 
 controlP5.Slider : int getHandleSize() 
 controlP5.Slider : int getNumberOfTickMarks() 
 controlP5.Slider : int getSliderMode() 
 controlP5.Slider : int getTriggerEvent() 
 java.lang.Object : String toString() 
 java.lang.Object : boolean equals(Object) 
 
 created: 2015/03/24 12:25:46
 
 */
