tests
testNameNamespaceURI
	| element |

	element := self nodeClass new.
	element name: 'one' namespaceURI: 'defaultNS'.
	self
		assert: element name = 'one';
		assert: element namespaceURI = 'defaultNS'.

	element := self nodeClass name: 'prefix:two' namespaceURI: 'prefixNS'.
	self
		assert: element name = 'prefix:two';
		assert: element namespaceURI = 'prefixNS'.