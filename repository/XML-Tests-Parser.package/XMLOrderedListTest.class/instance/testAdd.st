tests
testAdd
	| list |

	list := self emptyList.
	self
		deny: list = self listWithElements;
		assert: (self listElements allSatisfy: [:each | (list add: each) = each]);
		assert: (list = self listWithElements).