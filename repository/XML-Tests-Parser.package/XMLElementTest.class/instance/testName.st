tests
testName
	| element |

	self
		assert: (self nodeClass name: 'one') name = 'one';
		should: [self nodeClass name: 'unmapped:two'] raise: XMLNamespaceException.
	
	element := self nodeClass new.
	self assert: element name isEmpty.

	element name: 'one'.
	self assert: element name = 'one'.

	element name: 'two'.
	self assert: element name = 'two'.
	self should: [element name: 'unmapped:two'] raise: XMLNamespaceException.

	element usesNamespaces: false.
	self shouldnt: [element name: 'unmapped:three'] raise: XMLNamespaceException.
	self assert: element name = 'unmapped:three'.