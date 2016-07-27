accessing
name: aName
	self renameWith: [
		name := aName.
		localName := aName xmlLocalNameAfterPrefix]