tests
testPrefix
	| attribute |

	attribute := self nodeClass new.
	self assert: attribute prefix isEmpty.

	attribute name: 'one'.
	self assert: attribute prefix isEmpty.

	attribute name: 'prefix:two'.
	self assert: attribute prefix = 'prefix'.

	attribute name: 'three'.
	self assert: attribute prefix isEmpty.