parsing
parserForContentModel: aContentModel
	"the tokenizer removes all spaces from the content model"
	(aContentModel size > 0
		and: [(aContentModel at: 1) == $(])
		ifTrue: [
			(aContentModel size > 1
				and: [(aContentModel at: 2) == $#]) "#PCDATA mixed content"
				ifTrue: [^ DTDMixedContentModelParser]
				ifFalse: [^ DTDElementContentModelParser]]
		ifFalse: [^ DTDLiteralContentModelParser]