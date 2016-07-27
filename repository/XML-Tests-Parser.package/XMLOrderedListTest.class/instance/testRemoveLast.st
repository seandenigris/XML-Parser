tests
testRemoveLast
	| list |

	list := self listWithElements.
	self
		assert: list removeLast = self listWithElements last;
		assert: list = self listWithElements allButLast;
		should: [self emptyList removeLast] raise: Error.