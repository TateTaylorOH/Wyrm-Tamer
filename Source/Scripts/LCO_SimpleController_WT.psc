Scriptname LCO_SimpleController_WT extends LCO_LocationControllerBase

Message property NoClaim Auto
Message Property Claim Auto
Form Property DefaultBanner Auto
Form Property EECBanner Auto
Form Property ImperialBanner Auto
Form Property StormcloakBanner Auto

ObjectReference myDefaultBanner
ObjectReference myEECBanner
ObjectReference myImperialBanner
ObjectReference myStormcloakBanner

Event onLoad()
	myDefaultBanner = Game.findClosestReferenceOfTypeFromRef(DefaultBanner, self, 400.0)
	myEECBanner = Game.findClosestReferenceOfTypeFromRef(EECBanner, self, 400.0)
	myImperialBanner = Game.findClosestReferenceOfTypeFromRef(ImperialBanner, self, 400.0)
	myStormcloakBanner = Game.findClosestReferenceOfTypeFromRef(StormcloakBanner, self, 400.0)
	updateBanners()
	setDisplayName(thisLocation.getName())
endEvent

Event onActivate(ObjectReference akActionRef)
debug.notification("onActivate event called.")
	if((akActionRef as Actor).isInCombat() || !thisLocation.isCleared())
		NoClaim.show()
		return
	endIf
	int choice = Claim.show()
	int current = thisLocation.getKeywordData(CurrentOwnership) as int
	if(choice == 0 && current != LCO_Default) ; incidentally I'm usually one to say hardcoding is bad but tbh eh
debug.notification("LCO_Default selected.")
		newOwner = LCO_Default ; this is a specific version of a general script for specific cases
		updateBanners(LCO_Default)
		goToState("UpdateQueued")
	elseif(choice == 1 && current != LCO_LocalHold) ; and I already know how it's supposed to work and when
debug.notification("LCO_LocalHold selected.")
		newOwner = LCO_LocalHold
		updateBanners(LCO_LocalHold)
		goToState("UpdateQueued")
	elseif(choice == 2 && current != LCO_Imperial)
debug.notification("LCO_Imperial selected.")
		newOwner = LCO_Imperial
		updateBanners(LCO_Imperial)
		goToState("UpdateQueued")
	elseif(choice == 3 && current != LCO_Stormcloak)
debug.notification("LCO_Stormcloak selected.")
		newOwner = LCO_Stormcloak
		updateBanners(LCO_Stormcloak)
		goToState("UpdateQueued")
	endIf
endEvent

function updateBanners(int i = -1)
debug.notification("updateBanners function called.")
	if(i == -1)
		i = thisLocation.getKeywordData(CurrentOwnership) as int
	endIf
	if(i == LCO_Default)
debug.notification("IS LCO_Default.")
		myDefaultBanner.enableNoWait()
		myEECBanner.disableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO_LocalHold)
debug.notification("IS LCO_LocalHold.")
		myDefaultBanner.disableNoWait()
		myEECBanner.enableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO_Imperial)
debug.notification("IS LCO_Imperial.")
		myDefaultBanner.disableNoWait()
		myEECBanner.disableNoWait()
		myImperialBanner.enableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO_Stormcloak)
debug.notification("IS LCO_Stormcloak.")
		myDefaultBanner.disableNoWait()
		myEECBanner.disableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.enableNoWait()
	endIf
endFunction