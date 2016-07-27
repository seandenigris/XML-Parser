tests
testString
	| node |

	node := self nodeClass new.
	self assert: node string isEmpty.

	node string: self markupString.
	self assert: node string = self markupString.

	node string: ''.
	self assert: node string isEmpty.