Scriptname LCO_SimpleController_WT extends LCO_SimpleControllerBase

Form Property DefaultBanner Auto
{base form for the default banner near the controller.}
Form Property EECBanner Auto
{base form for the East Empire Company banner near the controller.}
Form Property ImperialBanner Auto
{base form for the Imperial banner near the controller.}
Form Property StormcloakBanner Auto
{base form for the Stormcloak banner near the controller.}

ObjectReference myDefaultBanner
ObjectReference myEECBanner
ObjectReference myImperialBanner
ObjectReference myStormcloakBanner 

function getLocalBanners()
	myDefaultBanner = Game.findClosestReferenceOfTypeFromRef(DefaultBanner, self, 400.0)
	myEECBanner = Game.findClosestReferenceOfTypeFromRef(EECBanner, self, 400.0)
	myImperialBanner = Game.findClosestReferenceOfTypeFromRef(ImperialBanner, self, 400.0)
	myStormcloakBanner = Game.findClosestReferenceOfTypeFromRef(StormcloakBanner, self, 400.0)
endFunction

int function processChoice(int selectedChoice, int currentOwner)
	if(selectedChoice == 0)
		return LCO.Default()
	elseif(selectedChoice == 1)
		return LCO.EastEmpireCompany()
	elseif(selectedChoice == 2)
		return LCO.Imperial()
	elseif(selectedChoice == 3)
		return LCO.Stormcloak()
	endIf
	return currentOwner
endFunction

function hide()
	parent.hide()
	myDefaultBanner.disableNoWait()
	myEECBanner.disableNoWait()
	myImperialBanner.disableNoWait()
	myStormcloakBanner.disableNoWait()
endFunction

function updateBanners(int i = -1)
	if(i == -1)
		i = thisLocation.getKeywordData(CurrentOwnership) as int
	endIf
	if(i == LCO.Default())
		myDefaultBanner.enableNoWait()
		myEECBanner.disableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO.EastEmpireCompany())
		myDefaultBanner.disableNoWait()
		myEECBanner.enableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO.Imperial())
		myDefaultBanner.disableNoWait()
		myEECBanner.disableNoWait()
		myImperialBanner.enableNoWait()
		myStormcloakBanner.disableNoWait()
	elseif(i == LCO.Stormcloak())
		myDefaultBanner.disableNoWait()
		myEECBanner.disableNoWait()
		myImperialBanner.disableNoWait()
		myStormcloakBanner.enableNoWait()
	endIf
endFunction