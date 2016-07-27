removing
removeAttribute: aName ifAbsent: aBlock
	^ (self
		removeAttributeNodeAt: aName
		ifAbsent: [^ aBlock value]) value