handling tokens
handleEndTag: anElementName
	| prefix localName namespaceURI |

	self closeTag: anElementName.

	anElementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].
	self usesNamespaces
		ifTrue: [namespaceURI := self nestedScopes resolvePrefix: prefix]
		ifFalse: [namespaceURI := nil].

	self activeSaxHandler 
		endElement: localName
		qualifiedName: anElementName
		prefix: prefix
		uri: namespaceURI.

	self usesNamespaces
		ifTrue: [
			self undeclareNamespaces.
			self nestedScopes leaveScope.].