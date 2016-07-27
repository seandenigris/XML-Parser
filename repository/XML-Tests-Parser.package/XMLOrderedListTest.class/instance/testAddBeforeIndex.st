tests
testAddBeforeIndex
	| list i |

	(list := self emptyList) add: self listElements last.
	i := 0.
	self
		assert:
			(self listElements allButLast
				allSatisfy: [:each |
					i := i + 1.
					(list add: each beforeIndex: i) = each]);
		assert: list = self listWithElements;
		should: [list add: self singleElement beforeIndex: self listElements size + 2] raise: Error;
		should: [list add: self singleElement beforeIndex: 0] raise: Error.