tests
testAddAfter
	| list |

	super testAddAfter.

	list := self listWithSingleElement.
	self listElements allButFirst reverseDo: [:each |
		self
			should: [list add: each after: self singleElement]
			add: each
			toAndNotify: list].