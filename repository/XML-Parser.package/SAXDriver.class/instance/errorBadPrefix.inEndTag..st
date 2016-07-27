errors
errorBadPrefix: aPrefix inEndTag: anElementName
	self parseError:
		('End tag ', anElementName,
		' refers to unmapped prefix ', aPrefix asString)