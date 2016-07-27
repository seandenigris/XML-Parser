tests
testLocalName
	| element |

	element := self nodeClass new.
	self assert: element name isEmpty.

	element name: 'one'.
	self assert: element localName = 'one'.

	element name: 'two'.
	self assert: element localName = 'two'.

	element declarePrefix: 'prefix' uri: 'prefixNS'.
	element name: 'prefix:three'.
	self assert: element localName = 'three'.

	element name: 'four'.
	self assert: element localName = 'four'.