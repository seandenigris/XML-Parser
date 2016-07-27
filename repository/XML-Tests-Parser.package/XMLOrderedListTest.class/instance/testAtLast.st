tests
testAtLast
	| list |

	list := self listWithElements.
	1 to: list size do: [:i | self assert: (list atLast: i) = (self listElements atLast: i)].
	self
		assert: (list atLast: 0) = self defaultValue;
		assert: (list atLast: list size + 1) = self defaultValue.