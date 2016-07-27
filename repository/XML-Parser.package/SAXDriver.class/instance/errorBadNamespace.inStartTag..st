errors
errorBadNamespace: aNamespace inStartTag: anElementName
	self parseError:
		('Start tag ', anElementName,
		' refers to undefined namespace ', aNamespace asString)