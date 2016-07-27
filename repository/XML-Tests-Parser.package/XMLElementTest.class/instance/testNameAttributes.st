tests
testNameAttributes
	| attributes unprefixedAttributes element |

	attributes := self attributes.
	unprefixedAttributes := self unprefixedAttributes.
	element := self nodeClass name: 'one' attributes: unprefixedAttributes.
	self
		assert: element name = 'one';
		assertElement: element hasAttributes: unprefixedAttributes.

	element := self nodeClass name: 'two' attributes: unprefixedAttributes associations.
	self
		assert: element name = 'two';
		assertElement: element hasAttributes: unprefixedAttributes.

	self
		should: [self nodeClass name: 'undeclared:three' attributes: unprefixedAttributes]
		raise: XMLNamespaceException.
	self
		should: [self nodeClass name: 'four' attributes: attributes]
		raise: XMLNamespaceException.