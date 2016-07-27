handling tokens
handleEndTag: elementName
	| prefix localName namespaceURI |

	self usesNamespaces
		ifTrue: [
			elementName splitQualifiedNameInto: [:prefixPart :localPart |
				prefix := prefixPart.
				localName := localPart.
				namespaceURI := self nestedScopes resolvePrefix: prefix].
			self validateEndTag: localName prefix: prefix]
		ifFalse: [localName := elementName].
		
	self activeSaxHandler 
		endElement: localName
		qualifiedName: elementName
		prefix: prefix
		uri: namespaceURI.

	self usesNamespaces
		ifTrue: [
			self nestedScopes leaveScope.
			self activeSaxHandler endPrefixMapping: prefix].