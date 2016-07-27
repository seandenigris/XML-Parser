handling tokens
handleElementDeclaration: aName contentModel: aContentModel
	self isValidating
		ifTrue: [
			self dtd
				parseContentModel: aContentModel
				for: aName].

	self saxHandler
		elementDeclaration: aName
		contentModel: aContentModel