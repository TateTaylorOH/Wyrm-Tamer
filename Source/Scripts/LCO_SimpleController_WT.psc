Scriptname LCO_SimpleController_WT extends LCO_LocationControllerBase  

;/inherited properties
int LCO_Default
int LCO_Player
int LCO_LocalHold
int LCO_Imperial
int LCO_Stormcloak
int LCO_Companions
int LCO_ThievesGuild
int LCO_CollegeOfWinterhold
int LCO_DarkBrotherhood
int LCO_Stormcloak
int LCO_LocalHold
int LCO_Bandits
int LCO_Forsworn
int LCO_Warlock
int LCO_Animals
int LCO_DruadachForsworn
int LCO_Imperial
int LCO_Vampire
Keyword CurrentOwnership
Keyword DefaultOwnership
Keyword ChangeOwnership
int newOwner
int defaultOwner
GlobalVariable realTimeUpdateDelay
GlobalVariable gameTimeUpdateDelay
Location thisLocation
/;

Message property NoClaim Auto
Message Property Claim Auto
Form Property DefaultBanner Auto
Form Property ECCoBanner Auto
Form Property ImperialBanner Auto
Form Property StormcloakBanner Auto

ObjectReference myDefaultBanner
ObjectReference myECCoBanner
ObjectReference myImperialBanner
ObjectReference myStormcloakBanner

Event onLoad()
	myDefaultBanner = Game.findClosestReferenceOfTypeFromRef(DefaultBanner, self, 400.0)
	myECCoBanner = Game.findClosestReferenceOfTypeFromRef(ECCoBanner, self, 400.0)
	myImperialBanner = Game.findClosestReferenceOfTypeFromRef(ImperialBanner, self, 400.0)
	myStormcloakBanner = Game.findClosestReferenceOfTypeFromRef(StormcloakBanner, self, 400.0)
	updateBanners()
	setDisplayName(thisLocation.getName())
endEvent

Event onActivate(ObjectReference akActionRef)
	if((akActionRef as Actor).isInCombat() || !thisLocation.isCleared())
		NoClaim.show()
		return
	endIf
	int choice = Claim.show()
	int current = thisLocation.getKeywordData(CurrentOwnership) as int
	if(choice == 0 && current != LCO_Default)
		newOwner = LCO_Default
		updateBanners(LCO_Default)
		goToState("UpdateQueued")
	elseif(choice == 1 && current != LCO_LocalHold)
		newOwner = LCO_LocalHold
		updateBanners(LCO_LocalHold)
		goToState("UpdateQueued")
	elseif(choice == 2 && current != LCO_Imperial)
		newOwner = LCO_Imperial
		updateBanners(LCO_Imperial)
		goToState("UpdateQueued")
	elseif(choice == 3 && current != LCO_Stormcloak)
		newOwner = LCO_Stormcloak
		updateBanners(LCO_Stormcloak)
		goToState("UpdateQueued")
	endIf
endEvent

function updateBanners(int i = -1)
	if(i == -1)
		i = thisLocation.getKeywordData(CurrentOwnership) as int
	endIf
	if(i == LCO_Default)
		myDefaultBanner.enableNoWait()
		myECCoBanner.disableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO_LocalHold)
		myDefaultBanner.disableNoWait()
		myECCoBanner.enableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO_Imperial)
		myDefaultBanner.disableNoWait()
		myECCoBanner.disableNoWait()
		myImperialBanner.enableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO_Stormcloak)
		myDefaultBanner.disableNoWait()
		myECCoBanner.disableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.enableNoWait()
	endIf
endFunction