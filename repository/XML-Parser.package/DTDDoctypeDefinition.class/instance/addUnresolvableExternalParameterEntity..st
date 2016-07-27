adding
addUnresolvableExternalParameterEntity: aName
	self parameterEntities
		at: aName
		ifAbsentPut: [DTDUnresolvableExternalParameterEntity named: aName]