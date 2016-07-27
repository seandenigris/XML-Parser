tests
testAt
	| list |

	list := self listWithElements.
	self
		assert: ((1 to: list size) allSatisfy: [:i | (list at: i) = (self listElements at: i)]);
		assert: (list at: 0) = self defaultValue;
		assert: (list at: list size + 1) = self defaultValue.