package openfl.events;


import openfl.display.InteractiveObject;


class FocusEvent extends Event {
	
	
	public static var FOCUS_IN = "focusIn";
	public static var FOCUS_OUT = "focusOut";
	public static var KEY_FOCUS_CHANGE = "keyFocusChange";
	public static var MOUSE_FOCUS_CHANGE = "mouseFocusChange";
	
	public var keyCode:Int;
	public var relatedObject:InteractiveObject;
	public var shiftKey:Bool;
	
	
	public function new (type:String, bubbles:Bool = false, cancelable:Bool = false, relatedObject:InteractiveObject = null, shiftKey:Bool = false, keyCode:Int = 0) {
		
		super (type, bubbles, cancelable);
		
		this.keyCode = keyCode;
		this.shiftKey = shiftKey;
		this.relatedObject = relatedObject;
		
	}
	
	
	public override function clone ():Event {
		
		var event = new FocusEvent (type, bubbles, cancelable, relatedObject, shiftKey, keyCode);
		event.target = target;
		event.currentTarget = currentTarget;
		#if !openfl_legacy
		event.eventPhase = eventPhase;
		#end
		return event;
		
	}
	
	
	public override function toString ():String {
		
		return __formatToString ("FocusEvent",  [ "type", "bubbles", "cancelable", "relatedObject", "shiftKey", "keyCode" ]);
		
	}
	
	
}