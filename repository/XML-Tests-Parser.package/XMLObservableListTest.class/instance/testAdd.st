tests
testAdd
	| list |

	super testAdd.

	list := self emptyList.
	self listElements do: [:each |
		self
			should: [list add: each]
			add: each
			toAndNotify: list].