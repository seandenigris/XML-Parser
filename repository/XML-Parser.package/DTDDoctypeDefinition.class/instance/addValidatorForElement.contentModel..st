validators
addValidatorForElement: anElement contentModel: aContentModel
	self elementValidators
		at: anElement
		ifAbsentPut: [
			(DTDContentModelParser
				name: anElement
				contentModel: aContentModel) parse]