tests
testRemoveLast
	| list |

	list := self listWithElements.
	self listElements reverseDo: [:each |
		self
			assert: list removeLast = each;
			assert: list = (self listClass newFrom: (self listElements copyUpTo: each))].
	self should: [list removeLast] raise: Error.