handling tokens
handleAttributeDeclaration: anElement name: aName type: aType default: aDefaultDeclaration
	self isValidating
		ifTrue: [
			self dtd
				parseAttributeDefinition: anElement
				name: aName
				type: aType
				default: aDefaultDeclaration]