tests
testAtLastIfAbsent
	| list |

	list := self listWithElements.
	1 to: list size do: [:i |
		self assert: (list atLast: i ifAbsent: [self newElement]) = (self listElements atLast: i)].
	self
		assert: (list atLast: 0 ifAbsent: [self newElement]) = self newElement;
		assert: (list atLast: list size + 1 ifAbsent: [self newElement]) = self newElement.