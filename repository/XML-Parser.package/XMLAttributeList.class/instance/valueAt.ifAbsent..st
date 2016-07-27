accessing
valueAt: aName ifAbsent: aBlock
	^ (self attributesByName
		at: aName
		ifAbsent: [^ aBlock value]) value