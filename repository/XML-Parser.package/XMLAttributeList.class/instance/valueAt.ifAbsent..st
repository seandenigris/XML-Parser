accessing
valueAt: aName ifAbsent: aBlock
	^ (self nodesByName
		at: aName
		ifAbsent: [^ aBlock value]) value