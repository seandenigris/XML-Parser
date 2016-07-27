handling tokens
handleEndTag: anElementName
	| prefix localName namespaceURI |

	self wellFormednessChecker endedElement: anElementName.

	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].
	self usesNamespaces
		ifTrue: [namespaceURI := self scopeManager resolvePrefix: prefix].

	self activeSaxHandler 
		endElement: anElementName
		prefix: prefix
		uri: namespaceURI
		localName: localName.

	self usesNamespaces
		ifTrue: [
			self undeclareNamespaces.
			self scopeManager exitScope].