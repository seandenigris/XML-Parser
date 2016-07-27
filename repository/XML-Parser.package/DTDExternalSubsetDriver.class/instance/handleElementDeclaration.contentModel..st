handling tokens
handleElementDeclaration: aName contentModel: aContentModel
	self isValidating
		ifTrue: [
			self dtd
				parseElement: aName
				contentModel: aContentModel]