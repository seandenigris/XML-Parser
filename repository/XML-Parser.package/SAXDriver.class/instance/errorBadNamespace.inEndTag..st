errors
errorBadNamespace: aNamespace inEndTag: anElementName
	self parseError:
		('End tag ', anElementName,
		' refers to undefined namespace ', aNamespace asString)