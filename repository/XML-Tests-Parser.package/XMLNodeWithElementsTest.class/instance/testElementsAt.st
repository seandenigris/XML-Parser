tests
testElementsAt
	| root namedElements |

	root := self newNodeWithElements firstElement.
	self assert: (root elementsAt: 'absent') isEmpty.

	namedElements := root elementsAt: 'four'.
	self assert: namedElements size = 2.
	self
		assertList: namedElements
		selects: (root elements select: [:each | each isNamed: 'four']).

	(namedElements := namedElements copy) do: [:each |
		root removeNode: each.
		self
			assertList: (root elementsAt: 'four')
			selects: (namedElements copyAfter: each)].