handling tokens
handleEndTag: elementName
	| namespace localName namespaceURI |

	self usesNamespaces
		ifTrue: [
			elementName splitQualifiedNameInto: [:ns :ln |
				namespace := ns.
				localName := ln].

			(namespace isNil or: [self scoping isBoundNamespace: namespace])
				ifFalse: [self errorBadNamespace: namespace inEndTag: elementName].

			"call the handler"
			self saxHandler
				checkEOD; 
				endElement: localName
				namespace: namespace
				qualifiedName: elementName
				scope: self scoping currentScope.
			self scoping leaveScope]
		ifFalse: [
			"call the handler"
			self saxHandler
				checkEOD; 
				endElement: elementName namespace: nil namespaceURI: nil qualifiedName: elementName]