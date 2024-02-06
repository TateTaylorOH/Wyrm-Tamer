Scriptname DES_RemoveFromRadiantExclusion extends ObjectReference  

ObjectReference property RadiantEnable auto
Formlist Property vf_RadiantExclusion auto
Formlist Property DES_LCO_WTLocations auto

EVENT onTriggerEnter(ObjectReference triggerRef)
	IF !RadiantEnable.IsEnabled() 
		 int iIndex = 0
		 ;int iPreInjectSize = vf_RadiantExclusion.GetSize()
		 ;debug.messagebox("There are " + iPreInjectSize + " forms in vf_RadiantExclusion.")
		 while iIndex < 43
		 		 vf_RadiantExclusion.RemoveAddedForm(DES_LCO_WTLocations.GetAt(iIndex))
		 		 iIndex += 1
		 endwhile
		 ;int iPostInjectSize = vf_RadiantExclusion.GetSize()
		 ;debug.messagebox("There are now " + iPostInjectSize + " forms in vf_RadiantExclusion.")
		 ;int iCheckedForms = 0
		 ;while iCheckedForms < 43
		 ;		 debug.notification(vf_RadiantExclusion.GetAt(iCheckedForms).GetName())
		 ;		 iCheckedForms += 1
		 ;endwhile
	ENDIF
ENDEVENT