private
validateStartTag: aStartTag attributes: anAttributeDictionary
	self elementNester totalOpen > 1
		ifFalse: [self validateRootElement: aStartTag].

	self validator
		validateStartTag: aStartTag
		attributes: anAttributeDictionary.