notifications
renamedAttribute: anAttribute from: anOldName to: aNewName
	self attributesByName
		removeKey: anOldName;
		at: aNewName put: anAttribute