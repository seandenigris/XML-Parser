tests
testIndexOf
	| list |

	list := self listWithElements.
	1 to: list size do: [:i |
		self
			assert: (list indexOf: (list at: i)) = i;
			assert: (list indexOf: (list at: i) copy) = i].
	self assert: (list indexOf: self newElement) isZero.