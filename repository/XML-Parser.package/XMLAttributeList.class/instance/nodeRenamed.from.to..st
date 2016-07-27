private
nodeRenamed: aNode from: anOldName to: aNewName
	self nodesByName
		removeKey: anOldName;
		at: aNewName put: aNode