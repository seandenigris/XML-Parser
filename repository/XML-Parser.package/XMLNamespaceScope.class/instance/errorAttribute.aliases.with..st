errors
errorAttribute: anAttribute aliases: aPrefix with: aUri
	self error:
		('Attributes ', anAttribute, ' and ',
		aPrefix, ' are aliased to namespace ', aUri)