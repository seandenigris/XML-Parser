accessing
changeElement: anElement
	^ (changedNodes ifNil: [changedNodes := IdentityDictionary new])
		at: anElement
		ifAbsentPut: [anElement copy]