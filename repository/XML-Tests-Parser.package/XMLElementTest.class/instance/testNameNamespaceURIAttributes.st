tests
testNameNamespaceURIAttributes
	| attributes unprefixedAttributes element |

	attributes := self attributes.
	unprefixedAttributes := self unprefixedAttributes.
	element :=
		self nodeClass
			name: 'prefix:one'
			namespaceURI: 'prefixNS'
			attributes: attributes.
	self
		assert: element name = 'prefix:one';
		assert: element namespaceURI = 'prefixNS';
		assertElement: element hasAttributes: attributes.

	element :=
		self nodeClass
			name: 'two'
			namespaceURI: 'prefixNS'
			attributes: unprefixedAttributes.
	self
		assert: element name = 'two';
		assert: element namespaceURI = 'prefixNS';
		assertElement: element hasAttributes: unprefixedAttributes.

	self
		should: [self nodeClass name: 'three' namespaceURI: '' attributes: attributes]
		raise: XMLNamespaceException.
	self
		should: [self nodeClass name: 'four' namespaceURI: 'prefixNS' attributes: attributes]
		raise: XMLNamespaceException.
	self
		should: [self nodeClass name: 'prefix:five' namespaceURI: '' attributes: unprefixedAttributes]
		raise: XMLNamespaceException.