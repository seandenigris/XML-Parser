handling tokens
handleEndTag: anElementName
	| prefix |

	self elementNester hasScopedAttributes
		ifTrue: [
			self
				endNestingOfElement: anElementName
				withScopedAttributes: self elementNester currentScopedAttributes]
		ifFalse: [self elementNester endElement: anElementName].

	prefix := anElementName qualifiedNamePrefix.
	saxHandler 
		endElement: anElementName
		prefix: prefix
		uri:
			(self usesNamespaces
				ifTrue: [self scopeAllocator resolvePrefix: prefix]
				ifFalse: [''])
		localName: (anElementName qualifiedNameLocalPart: prefix).

	self usesNamespaces
		ifTrue: [
			self undeclareNamespaces.
			self scopeAllocator exitScope].
	self isValidating
		ifTrue: [self validator validateEndTag: anElementName].