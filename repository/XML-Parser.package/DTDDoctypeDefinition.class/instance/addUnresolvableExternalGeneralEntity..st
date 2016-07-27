adding
addUnresolvableExternalGeneralEntity: aName
	self generalEntities
		at: aName
		ifAbsentPut: [DTDUnresolvableExternalGeneralEntity named: aName]