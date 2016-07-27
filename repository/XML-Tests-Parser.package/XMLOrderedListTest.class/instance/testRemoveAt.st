tests
testRemoveAt
	| list |

	self listElements do: [:each |
		list := self listWithElements.
		self
			assert: (list removeAt: (self listElements indexOf: each)) = each;
			assert: (list = (self listClass newFrom: (self listElements copyWithout: each)))].
	self
		should: [self listWithElements removeAt: 0] raise: Error;
		should: [self listWithElements removeAt: self listElements size + 1] raise: Error.