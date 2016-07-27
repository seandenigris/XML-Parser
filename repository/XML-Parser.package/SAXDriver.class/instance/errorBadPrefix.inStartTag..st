errors
errorBadPrefix: aPrefix inStartTag: anElementName
	self parseError:
		('Start tag ', anElementName,
		' refers to unmapped prefix ', aPrefix asString)