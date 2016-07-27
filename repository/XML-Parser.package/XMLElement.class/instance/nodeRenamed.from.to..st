announcements
nodeRenamed: aNode from: anOldName to: aNewName
	super nodeRenamed: aNode from: aNode to: aNewName.
	aNode isAttribute
		ifTrue: [
			self validateAttribute: aNewName.
			self attributeNodes nodeRenamed: aNode from: anOldName to: aNewName]