Scriptname ISP_BlockScript extends ObjectReference

ISP_Script ISPSelf

Event OnWorkshopObjectPlaced(ObjectReference akReference)
	ISPSelf = (Self as ObjectReference) as ISP_Script
	ISPSelf.Register(Self)
EndEvent

Event OnWorkshopObjectDestroyed(ObjectReference akReference)
	ISPSelf.Unregister(Self)
EndEvent

Event ISP_Script.OnSnapped(ISP_Script akSender, Var[] akArgs)
	Debug.MessageBox("Snapped: " + Self)
EndEvent

Event ISP_Script.OnUnsnapped(ISP_Script akSender, Var[] akArgs)
	Debug.MessageBox("Unsnapped: " + Self)
EndEvent