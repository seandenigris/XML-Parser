notifying
renamedAttribute: anAttributeNode from: anOldName to: aNewName
	self attributeNodesByName
		removeKey: anOldName;
		at: aNewName ifPresent: [:attribute | self remove: attribute];
		at: aNewName put: anAttributeNode