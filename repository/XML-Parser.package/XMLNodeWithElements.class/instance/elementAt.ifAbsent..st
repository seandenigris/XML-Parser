accessing
elementAt: aString ifAbsent: aBlock
	^ (self elementCache firstElementNamed:  aString) ifNil: aBlock