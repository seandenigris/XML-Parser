accessing
externalEntityResolver
	^ externalEntityResolver ifNil: [externalEntityResolver := DTDCachingEntityResolver new]