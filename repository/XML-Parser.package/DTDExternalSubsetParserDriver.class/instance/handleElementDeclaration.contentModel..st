handling tokens
handleElementDeclaration: aName contentModel: aContentModel
	self isValidating
		ifTrue: [
			self dtd
				addValidatorForElement: aName
				contentModel: aContentModel]