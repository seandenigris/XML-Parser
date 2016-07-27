tests
testParent
	| node parent |

	node := self nodeClass new.
	self assert: node parent isNil.

	parent := self nodeClass new.
	node parent: parent.
	self assert: node parent == parent.