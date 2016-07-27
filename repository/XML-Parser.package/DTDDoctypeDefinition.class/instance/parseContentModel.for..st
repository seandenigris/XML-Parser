validators
parseContentModel: aContentModel for: anElement
	self elementValidators
		at: anElement
		ifAbsentPut: [
			(DTDContentModelParser
				name: anElement
				contentModel: aContentModel) parse]