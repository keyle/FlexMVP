package noben
{
	import flash.events.Event;
	
	import spark.components.Group;
	
	public class BaseView extends Group
	{
		[Bindable]
		public var presenter:*;
		
		public function BaseView()
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, addedToStage);
		}
		
		private function addedToStage(e:Event) :void
		{
			if(!presenter) throw new Error("Please define a presenter for the view");
		}
	}
}