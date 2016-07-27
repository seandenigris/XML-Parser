tests
testNamespacesResolvingDisabled
	| document |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacesXML
			usingNamespaces: false.
	document allElementsDo: [:each |
		self
			assert: each defaultNamespace isEmpty;
			assert: (each resolvePrefix: '') isEmpty;
			assert: (each resolvePrefix: 'book') isEmpty;
			assert: (each resolvePrefix: 'ps') isEmpty;
			assert:
				each namespaceURI =
					(each hasPrefix
						ifTrue: [each resolvePrefix: each prefix]
						ifFalse: [each defaultNamespace])]