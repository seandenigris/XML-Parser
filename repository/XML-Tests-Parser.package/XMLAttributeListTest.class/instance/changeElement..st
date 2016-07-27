accessing
changeElement: anAttribute
	^ (changedAttributes ifNil: [changedAttributes := IdentityDictionary new])
		at: anAttribute
		ifAbsentPut: [
			XMLAttribute
				name: 'new', anAttribute name
				value: 'new', anAttribute value]