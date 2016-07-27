parsing
parserForContentModel: aContentModel
	^ (aContentModel notEmpty and: [aContentModel first == $(])
		ifTrue: [
			(aContentModel size > 1 and: [aContentModel second == $#])
				ifTrue: [DTDMixedContentModelParser]
				ifFalse: [DTDDFAContentModelParser]]
		ifFalse: [DTDAnyOrEmptyContentModelParser]