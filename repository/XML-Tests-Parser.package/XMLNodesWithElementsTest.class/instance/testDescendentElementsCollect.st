tests
testDescendentElementsCollect
	| nodeWithElements descendentElements |

	nodeWithElements := self newNodesWithElements.
	descendentElements := nodeWithElements descendentElements.
	self
		assertList: (nodeWithElements descendentElementsCollect: [:each | each identityHash])
		collects: (descendentElements collect: [:each | each identityHash]).

	descendentElements do: [:node |
		self
			assertList: (node descendentElementsCollect: [:each | each identityHash])
			collects: (node descendentElements collect: [:each | each identityHash])].