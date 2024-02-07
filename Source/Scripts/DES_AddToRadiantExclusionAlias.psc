Scriptname DES_AddToRadiantExclusionAlias extends ReferenceAlias 

DES_AddToRadiantExclusion Property questScript Auto

event OnPlayerLoadGame()
    questScript.InjectWTLocations()
endEvent