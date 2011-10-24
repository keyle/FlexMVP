package behaviors
{
	import flash.events.Event;
	import flash.events.FocusEvent;
	import spark.components.supportClasses.SkinnableTextBase;

	public class AutoCapitalizeBehavior extends Behavior
	{
		[Bindable]
		public var associatedObject:SkinnableTextBase;
		
		override public function onAttach(e:Event) :void
		{
			associatedObject.addEventListener(FocusEvent.FOCUS_OUT, focusout);
		}
		
		private function focusout(e:FocusEvent) :void
		{
			var t:String = associatedObject.text;
			var firstChar:String = t.substr(0, 1);
			var restOfString:String = t.substr(1, t.length);
			
			associatedObject.text = firstChar.toUpperCase() + restOfString.toLowerCase();
		}
		
		override public function onDetach(e:Event) :void
		{
			associatedObject.removeEventListener(FocusEvent.FOCUS_OUT, focusout);
		}
	}
}