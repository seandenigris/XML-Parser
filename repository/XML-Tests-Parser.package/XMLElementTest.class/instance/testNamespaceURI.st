tests
testNamespaceURI
	| element |

	element := self nodeClass new.
	self assert: element namespaceURI isEmpty.

	element defaultNamespace: 'defaultNS'.
	self assert: element namespaceURI = 'defaultNS'.

	element name: 'prefix:test' namespaceURI: 'prefixNS'.
	self assert: element namespaceURI = 'prefixNS'.
	
	element
		defaultNamespace: '';
		name: 'test'.
	self assert: element namespaceURI isEmpty.