handling tokens
handleElementDeclaration: aName contentModel: aContentModel
	self isValidating
		ifTrue: [
			self dtd
				parseContentModel: aContentModel
				for: aName]