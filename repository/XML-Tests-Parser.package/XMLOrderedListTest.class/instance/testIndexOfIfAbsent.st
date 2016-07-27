tests
testIndexOfIfAbsent
	| list |

	list := self listWithElements.
	1 to: list size do: [:i |
		self
			assert: (list indexOf: (list at: i) ifAbsent: [-1]) = i;
			assert: (list indexOf: (list at: i) copy ifAbsent: [-1]) = i].
	self assert: (list indexOf: self newElement ifAbsent: [-1]) = -1.