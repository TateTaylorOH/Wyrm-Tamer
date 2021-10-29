Scriptname DES_ClearLocation extends ObjectReference  

EVENT onTriggerEnter(ObjectReference triggerRef)
	thisLocation.SetCleared()
ENDEVENT

Location Property thisLocation Auto