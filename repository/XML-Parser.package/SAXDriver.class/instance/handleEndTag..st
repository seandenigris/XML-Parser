handling tokens
handleEndTag: anElementName
	self endNestingOfElement: anElementName.

	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		self saxHandler 
			endElement: anElementName
			prefix: prefixPart
			uri:
				(self usesNamespaces
					ifTrue: [self scopeAllocator resolvePrefix: prefixPart]
					ifFalse: [''])
			localName: localPart.

		self validateEndTag: anElementName].