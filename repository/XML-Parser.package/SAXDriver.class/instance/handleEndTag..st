handling tokens
handleEndTag: anElementName
	| prefix localName namespaceUri |

	self elementNester endedElement: anElementName.

	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].
	namespaceUri :=
		self usesNamespaces
			ifTrue: [self scopeAllocator resolvePrefix: prefix]
			ifFalse: [''].

	self saxHandler 
		endElement: anElementName
		prefix: prefix
		uri: namespaceUri
		localName: localName.

	self validateEndTag: anElementName.