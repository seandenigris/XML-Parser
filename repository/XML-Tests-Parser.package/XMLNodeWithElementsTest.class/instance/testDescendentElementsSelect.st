tests
testDescendentElementsSelect
	| nodeWithElements descendentElements |

	nodeWithElements := self newNodeWithElements.
	descendentElements := nodeWithElements descendentElements.
	self
		assertList: (nodeWithElements descendentElementsSelect: [:each | each hasChildren])
		selects: (descendentElements select: [:each | each hasChildren]).

	descendentElements do: [:node |
		self
			assertList: (node descendentElementsSelect: [:each | each hasChildren])
			selects: (node descendentElements select: [:each | each hasChildren])].