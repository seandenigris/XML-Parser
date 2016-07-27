handling tokens
handleEndTag: elementName
	| prefix localName namespaceURI |

	elementName splitQualifiedNameInto: [:prefixPart :localPart |
		prefix := prefixPart.
		localName := localPart].
	self usesNamespaces
		ifTrue: [
			namespaceURI := self nestedScopes resolvePrefix: prefix.
			self validateEndTag: localName prefix: prefix]
		ifFalse: [namespaceURI := nil].

	self activeSaxHandler 
		endElement: localName
		qualifiedName: elementName
		prefix: prefix
		uri: namespaceURI.

	self usesNamespaces
		ifTrue: [
			self undeclareNamespaces: self currentScope prefixMappings.
			self nestedScopes leaveScope.].