tests
testIndexOf
	| list |

	list := self listWithElements.
	1 to: list size do: [:i |
		self
			assert: (list indexOf: (list at: i)) = i;
			assert: (list indexOf: (self listElements at: i)) = i].
	self assert: (list indexOf: self absentElement) isZero.