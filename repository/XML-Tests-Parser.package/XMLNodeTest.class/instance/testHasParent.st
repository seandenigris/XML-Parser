tests
testHasParent
	| node |

	node := self nodeClass new.
	self deny: node hasParent.

	node parent: self nodeClass new.
	self assert: node hasParent.