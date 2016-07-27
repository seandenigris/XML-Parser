configuration
externalEntityLimits
	^ externalEntityLimits ifNil: [externalEntityLimits := DTDExternalEntityLimits new]