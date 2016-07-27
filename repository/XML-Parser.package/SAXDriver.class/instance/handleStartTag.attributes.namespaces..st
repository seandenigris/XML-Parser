handling tokens
handleStartTag: elementName attributes: attributeList namespaces: namespaces
	| localName namespace namespaceURI |

	(attributeList includesKey: 'xml:lang')
		ifTrue: [self languageEnvironment: (attributeList at: 'xml:lang')].
	self usesNamespaces
		ifTrue: [
			self scoping enterScope.
				"declare any namespaces"	
				namespaces keysAndValuesDo: [:ns :uri |
					self scoping declareNamespace: ns uri: uri].

			elementName splitQualifiedNameInto: [:ns :ln |
				namespace := ns.
				localName := ln].

			"ensure our namespace is defined"
			(namespace isNil or: [self scoping isBoundNamespace: namespace])
				ifFalse: [self errorBadNamespace: namespace inStartTag: elementName].
			self validatesAttributes
				ifTrue: [self scoping validateAttributes: attributeList].

			"call the handler"
			self saxHandler
				checkEOD; 
				startElement: localName
				namespace: namespace
				attributeList: attributeList
				scope: self scoping currentScope]
		ifFalse: [
			"call the handler"
			self saxHandler
				checkEOD; 
				startElement: elementName
				namespace: nil
				namespaceURI: nil
				attributeList: attributeList]