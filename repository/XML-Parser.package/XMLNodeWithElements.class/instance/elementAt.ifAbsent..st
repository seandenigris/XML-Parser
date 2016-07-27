accessing
elementAt: aString ifAbsent: aBlock
	^ (self elementsAt: aString ifAbsent: [^ aBlock value]) first