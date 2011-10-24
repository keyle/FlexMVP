package machines
{
	import noben.BasePresenter;

	public class MachineListViewPresenter extends BasePresenter
	{
		[Bindable]
		public var myText:String = '';
		
		[Bindable]
		public var myInput:String = '';
		
		
		public function updateText() :void
		{
			if(myInput.length < 1)
				myText = "You said... nothing!";
			else
				myText = "You said: " + myInput;
		}
	}
}