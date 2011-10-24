package behaviors
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.core.UIComponent;

	public class Behavior extends EventDispatcher
	{
		public function Behavior()
		{
			this.addEventListener(Event.ACTIVATE, onAttach);
			this.addEventListener(Event.DEACTIVATE, onDetach);
		}
		
		// override these
		public function onAttach(e:Event) :void {}
		public function onDetach(e:Event) :void {}
	}
}