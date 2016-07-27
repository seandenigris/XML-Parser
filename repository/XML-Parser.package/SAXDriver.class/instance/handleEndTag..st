handling tokens
handleEndTag: anElementName
	| prefix localName namespaceUri |

	self elementNester endedElement: anElementName.

	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].
	self usesNamespaces
		ifTrue: [namespaceUri := self scopeAllocator resolvePrefix: prefix].

	self saxHandler 
		endElement: anElementName
		prefix: prefix
		uri: namespaceUri
		localName: localName.

	self usesNamespaces
		ifTrue: [
			self undeclareNamespaces.
			self scopeAllocator exitScope].