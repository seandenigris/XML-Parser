tests
testNamespaceURI
	| element attribute|

	element := XMLElement new.
	attribute := self nodeClass new.
	element attributeNodes add: attribute.
	self assert: attribute namespaceURI isEmpty.

	element defaultNamespace: 'defaultNS'.
	self assert: attribute namespaceURI isEmpty.

	element declarePrefix: 'prefix' uri: 'prefixNS'.
	attribute name: 'prefix:test'.
	self assert: attribute namespaceURI = 'prefixNS'.
	
	attribute name: 'test'.
	self assert: attribute namespaceURI isEmpty.