tests
testName
	| attribute |

	attribute := self nodeClass new.
	self assert: attribute name isEmpty.

	attribute name: 'one'.
	self assert: attribute name = 'one'.

	attribute name: 'prefix:two'.
	self assert: attribute name = 'prefix:two'.