accessing
externalEntityResolver
	^ externalEntityResolver ifNil: [externalEntityResolver := DTDExternalEntityResolver new]