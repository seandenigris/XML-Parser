handling tokens
handleEndTag: anElementName
	| prefix localName namespaceURI |

	self closeTag: anElementName.

	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].
	self usesNamespaces
		ifTrue: [namespaceURI := self nestedScopes resolvePrefix: prefix].

	self activeSaxHandler 
		endElement: anElementName
		prefix: prefix
		uri: namespaceURI
		localName: localName.

	self usesNamespaces
		ifTrue: [
			self undeclareNamespaces.
			self nestedScopes leaveScope].