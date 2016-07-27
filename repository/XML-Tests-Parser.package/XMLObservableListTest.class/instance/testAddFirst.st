tests
testAddFirst
	| list |

	super testAddFirst.

	list := self emptyList.
	self listElements reverseDo: [:each |
		self
			should: [list addFirst: each]
			add: each
			toAndNotify: list].