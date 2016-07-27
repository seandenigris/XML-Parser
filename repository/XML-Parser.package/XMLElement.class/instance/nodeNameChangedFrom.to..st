notifications
nodeNameChangedFrom: anOldName to: aNewName
	self validateName.
	self
		notifyOf: #renamedElement:from:to:
		with: self
		with: anOldName
		with: aNewName