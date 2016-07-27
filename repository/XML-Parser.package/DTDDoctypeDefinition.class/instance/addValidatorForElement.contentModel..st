validators
addValidatorForElement: anElement contentModel: aContentModel
	self elementValidators
		at: anElement
		ifAbsentPut: [
			((DTDContentModelParser parserForContentModel: aContentModel)
				name: anElement
				contentModel: aContentModel) parse]