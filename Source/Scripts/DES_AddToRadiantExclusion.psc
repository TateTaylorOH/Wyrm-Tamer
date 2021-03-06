Scriptname DES_AddToRadiantExclusion extends Quest  

;WYRMSTOOTH PROPERTIES

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

;WYRMTAMER PROPERTIES

Formlist Property vf_RadiantExclusion auto
Location Property DES_LCO_WTAbandonedCampLocation auto
Location Property DES_LCO_WTThalmorCampLocation auto

EVENT OnInit()

;WYRMSTOOTH LOCATIONS

  vf_RadiantExclusion.AddForm(WTAbandonedLighthouseLocation)
  vf_RadiantExclusion.AddForm(WTArgonianHouseLocation)
  vf_RadiantExclusion.AddForm(WTBarracksLocation)
  vf_RadiantExclusion.AddForm(WTBarrowLocation)
  vf_RadiantExclusion.AddForm(WTBelonirBorgLocation)
  vf_RadiantExclusion.AddForm(WTBlindRobbersBluffLocation)
  vf_RadiantExclusion.AddForm(WTBloodfrostBurrowLocation)
  vf_RadiantExclusion.AddForm(WTBloodstoneCamp)
  vf_RadiantExclusion.AddForm(WTChillwaterLocation)
  vf_RadiantExclusion.AddForm(WTColdwaveCrescentLocation)
  vf_RadiantExclusion.AddForm(WTCragwaterCavernLocation)
  vf_RadiantExclusion.AddForm(WTDBSanctuaryLocation)
  vf_RadiantExclusion.AddForm(WTDimfrostLocation)
  vf_RadiantExclusion.AddForm(WTDockmasterHouseLocation)
  vf_RadiantExclusion.AddForm(WTFortMoonwatchLocation)
  vf_RadiantExclusion.AddForm(WTFortValusLocation)
  vf_RadiantExclusion.AddForm(WTFrostveinMineLocation)
  vf_RadiantExclusion.AddForm(WTFrostwindFollyLocation)
  vf_RadiantExclusion.AddForm(WTGronndalGroveLocation)
  vf_RadiantExclusion.AddForm(WTHaetarsCaveLocation)
  vf_RadiantExclusion.AddForm(WTHagsPerch)
  vf_RadiantExclusion.AddForm(WTHallOfTheDeadLocation)
  vf_RadiantExclusion.AddForm(WTHermanLocation)
  vf_RadiantExclusion.AddForm(WTHulgardSvenjaHouseLocation)
  vf_RadiantExclusion.AddForm(WTKazmalgurLocation)
  vf_RadiantExclusion.AddForm(WTKrakevisaLocation)
  vf_RadiantExclusion.AddForm(WTLaeniusHouseLocation)
  vf_RadiantExclusion.AddForm(WTLonghouseLocation)
  vf_RadiantExclusion.AddForm(WTMinersHouseLocation)
  vf_RadiantExclusion.AddForm(WTNalionGildanHouseLocation)
  vf_RadiantExclusion.AddForm(WTRuinedHomesteadLocation)
  vf_RadiantExclusion.AddForm(WTSaeglopurHouseLocation)
  vf_RadiantExclusion.AddForm(WTStendarrsOutpostLocation)
  vf_RadiantExclusion.AddForm(WTStonehollowLocation)
  vf_RadiantExclusion.AddForm(WTStonehollowWellLocation)
  vf_RadiantExclusion.AddForm(WTTheHermitCellarLocation)
  vf_RadiantExclusion.AddForm(WTTheHermitLocation)
  vf_RadiantExclusion.AddForm(WTTombOfVulomLocation)
  vf_RadiantExclusion.AddForm(WTTwinpeakTower)
  vf_RadiantExclusion.AddForm(WTWaylayerWatch)
  vf_RadiantExclusion.AddForm(WTWyrmstoothLocation)

;WYRMTAMER LOCATIONS

  vf_RadiantExclusion.AddForm(DES_LCO_WTAbandonedCampLocation)
  vf_RadiantExclusion.AddForm(DES_LCO_WTThalmorCampLocation)

SetStage(255)

ENDEVENT
