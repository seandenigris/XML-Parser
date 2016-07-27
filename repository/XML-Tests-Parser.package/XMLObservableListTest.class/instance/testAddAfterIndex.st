tests
testAddAfterIndex
	| list |

	super testAddAfterIndex.

	list := self listWithSingleElement.
	self listElements allButFirst reverseDo: [:each |
		self
			should: [list add: each afterIndex: 1]
			add: each
			toAndNotify: list].