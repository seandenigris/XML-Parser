tests
testAddLast
	| list |

	super testAddLast.

	list := self emptyList.
	self listElements do: [:each |
		self
			should: [list addLast: each]
			add: each
			toAndNotify: list].