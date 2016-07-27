notifications
nodeNameChangedFrom: anOldName to: aNewName
	self
		notifyOf: #renamedAttribute:from:to:
		with: self
		with: anOldName
		with: aNewName