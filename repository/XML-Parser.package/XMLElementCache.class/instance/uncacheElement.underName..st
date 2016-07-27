accessing
uncacheElement: anElement underName: aName
	(self elementsByName at: aName) remove: anElement.

	(self elementsByName at: aName)
		ifEmpty: [self elementsByName removeKey: aName].