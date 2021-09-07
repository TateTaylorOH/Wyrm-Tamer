Scriptname DES_RemoveFromRadiantExclusion extends ObjectReference  

;RADIANT EXCLUSION FORMLIST

Formlist Property vf_RadiantExclusion auto

;WYRMSTOOTH LOCATIONS

  Location Property WTAbandonedLighthouseLocation auto
  Location Property WTArgonianHouseLocation auto
  Location Property WTBarracksLocation auto
  Location Property WTBarrowLocation auto
  Location Property WTBelonirBorgLocation auto
  Location Property WTBlindRobbersBluffLocation auto
  Location Property WTBloodfrostBurrowLocation auto
  Location Property WTBloodstoneCamp auto
  Location Property WTChillwaterLocation auto
  Location Property WTColdwaveCrescentLocation auto
  Location Property WTCragwaterCavernLocation auto
  Location Property WTDBSanctuaryLocation auto
  Location Property WTDimfrostLocation auto
  Location Property WTDockmasterHouseLocation auto
  Location Property WTFortMoonwatchLocation auto
  Location Property WTFortValusLocation auto
  Location Property WTFrostveinMineLocation auto
  Location Property WTFrostwindFollyLocation auto
  Location Property WTGronndalGroveLocation auto
  Location Property WTHaetarsCaveLocation auto
  Location Property WTHagsPerch auto
  Location Property WTHallOfTheDeadLocation auto
  Location Property WTHermanLocation auto
  Location Property WTHulgardSvenjaHouseLocation auto
  Location Property WTKazmalgurLocation auto
  Location Property WTKrakevisaLocation auto
  Location Property WTLaeniusHouseLocation auto
  Location Property WTLonghouseLocation auto
  Location Property WTMinersHouseLocation auto
  Location Property WTNalionGildanHouseLocation auto
  Location Property WTRuinedHomesteadLocation auto
  Location Property WTSaeglopurHouseLocation auto
  Location Property WTStendarrsOutpostLocation auto
  Location Property WTStonehollowLocation auto
  Location Property WTStonehollowWellLocation auto
  Location Property WTTheHermitCellarLocation auto
  Location Property WTTheHermitLocation auto
  Location Property WTTombOfVulomLocation auto
  Location Property WTTwinpeakTower auto
  Location Property WTWaylayerWatch auto
  Location Property WTWyrmstoothLocation auto

;WYRMTAMER LOCATIONS

Location Property DES_LCO_WTAbandonedCampLocation auto
Location Property DES_LCO_WTThalmorCampLocation auto

Event onTriggerEnter(ObjectReference triggerRef)

;WYRMSTOOTH LOCATIONS

  vf_RadiantExclusion.removeAddedForm(WTAbandonedLighthouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTArgonianHouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTBarracksLocation)
  vf_RadiantExclusion.removeAddedForm(WTBarrowLocation)
  vf_RadiantExclusion.removeAddedForm(WTBelonirBorgLocation)
  vf_RadiantExclusion.removeAddedForm(WTBlindRobbersBluffLocation)
  vf_RadiantExclusion.removeAddedForm(WTBloodfrostBurrowLocation)
  vf_RadiantExclusion.removeAddedForm(WTBloodstoneCamp)
  vf_RadiantExclusion.removeAddedForm(WTChillwaterLocation)
  vf_RadiantExclusion.removeAddedForm(WTColdwaveCrescentLocation)
  vf_RadiantExclusion.removeAddedForm(WTCragwaterCavernLocation)
  vf_RadiantExclusion.removeAddedForm(WTDBSanctuaryLocation)
  vf_RadiantExclusion.removeAddedForm(WTDimfrostLocation)
  vf_RadiantExclusion.removeAddedForm(WTDockmasterHouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTFortMoonwatchLocation)
  vf_RadiantExclusion.removeAddedForm(WTFortValusLocation)
  vf_RadiantExclusion.removeAddedForm(WTFrostveinMineLocation)
  vf_RadiantExclusion.removeAddedForm(WTFrostwindFollyLocation)
  vf_RadiantExclusion.removeAddedForm(WTGronndalGroveLocation)
  vf_RadiantExclusion.removeAddedForm(WTHaetarsCaveLocation)
  vf_RadiantExclusion.removeAddedForm(WTHagsPerch)
  vf_RadiantExclusion.removeAddedForm(WTHallOfTheDeadLocation)
  vf_RadiantExclusion.removeAddedForm(WTHermanLocation)
  vf_RadiantExclusion.removeAddedForm(WTHulgardSvenjaHouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTKazmalgurLocation)
  vf_RadiantExclusion.removeAddedForm(WTKrakevisaLocation)
  vf_RadiantExclusion.removeAddedForm(WTLaeniusHouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTLonghouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTMinersHouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTNalionGildanHouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTRuinedHomesteadLocation)
  vf_RadiantExclusion.removeAddedForm(WTSaeglopurHouseLocation)
  vf_RadiantExclusion.removeAddedForm(WTStendarrsOutpostLocation)
  vf_RadiantExclusion.removeAddedForm(WTStonehollowLocation)
  vf_RadiantExclusion.removeAddedForm(WTStonehollowWellLocation)
  vf_RadiantExclusion.removeAddedForm(WTTheHermitCellarLocation)
  vf_RadiantExclusion.removeAddedForm(WTTheHermitLocation)
  vf_RadiantExclusion.removeAddedForm(WTTombOfVulomLocation)
  vf_RadiantExclusion.removeAddedForm(WTTwinpeakTower)
  vf_RadiantExclusion.removeAddedForm(WTWaylayerWatch)
  vf_RadiantExclusion.removeAddedForm(WTWyrmstoothLocation)

;WYRMTAMER LOCATIONS

  vf_RadiantExclusion.removeAddedForm(DES_LCO_WTAbandonedCampLocation)
  vf_RadiantExclusion.removeAddedForm(DES_LCO_WTThalmorCampLocation)

ENDEVENT
