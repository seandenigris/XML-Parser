removing
removeAttribute: aName ifAbsent: aBlock
	^ self attributeNodes
		removeAttribute: aName
		ifAbsent: aBlock