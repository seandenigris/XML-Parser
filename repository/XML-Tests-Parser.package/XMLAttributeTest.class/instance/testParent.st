tests
testParent
	| node |

	node := self nodeClass new.
	self
		should: [node parent] raise: Error;
		should: [node parent: self nodeClass new] raise: Error.