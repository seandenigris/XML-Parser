initialization
tokenizerOn: aStringOrStream
	^ (super tokenizerOn: aStringOrStream)
		nextStartExternalSubset;
		yourself