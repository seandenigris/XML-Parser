tests
testAddBefore
	| list last |

	super testAddBefore.

	last := self listElements last.
	(list := self emptyList) add: last.
	"allButLastDo: is not portable"
	self listElements allButLast do: [:each |
		self
			should: [list add: each before: last]
			add: each
			toAndNotify: list].