handling tokens
handleAttributeDeclaration: anElement name: aName type: aType default: aDefaultDeclaration
	self isValidating
		ifTrue: [
			self dtd
				addValidatorForAttributeIn: anElement
				named: aName
				type: aType
				default: aDefaultDeclaration].
	self saxHandler
		attributeDeclaration: anElement
		name: aName
		type: aType
		defaultDeclaration: aDefaultDeclaration