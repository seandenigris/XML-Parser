tests
testAtPut
	| list |

	list := self listWithElements.
	self
		assert:
			((1 to: list size) allSatisfy: [:i | | replacement |
				replacement := self listElements reversed at: i.
				(list at: i put: replacement) = replacement]);
		assert: list = self listWithElements reversed;
		should: [list at: 0 put: self absentElement] raise: Error;
		should: [list at: list size + 1 put: self absentElement] raise: Error.