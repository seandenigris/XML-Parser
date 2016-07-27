tests
testLocalName
	| attribute |

	attribute := self nodeClass new.
	self assert: attribute name isEmpty.

	attribute name: 'one'.
	self assert: attribute localName = 'one'.

	attribute name: 'two'.
	self assert: attribute localName = 'two'.

	attribute name: 'prefix:three'.
	self assert: attribute localName = 'three'.

	attribute name: 'four'.
	self assert: attribute localName = 'four'.