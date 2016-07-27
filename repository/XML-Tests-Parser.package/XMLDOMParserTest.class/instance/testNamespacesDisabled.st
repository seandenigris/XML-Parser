tests
testNamespacesDisabled
	| document |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacesXMLWithPrefixes
			usingNamespaces: false.
	document allElementsDo: [:each |
		self assert: each namespaceURI isEmpty.
		(each == document root or: [each isNamed: 'person'])
			ifTrue: [
				self
					assert: each hasPrefix;
					assert:
						each prefix =
							((each == document root) ifTrue: ['book'] ifFalse: ['ps'])]
			ifFalse: [
				self
					deny: each hasPrefix;
					assert: each prefix isEmpty]].