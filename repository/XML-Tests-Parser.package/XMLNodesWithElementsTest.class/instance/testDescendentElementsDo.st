tests
testDescendentElementsDo
	| nodeWithElements descendentElements |

	nodeWithElements := self newNodesWithElements.
	descendentElements := nodeWithElements descendentElements.
	self
		should: [:block | nodeWithElements descendentElementsDo: block]
		enumerate: descendentElements.

	descendentElements do: [:element |
		self
			should: [:block | element descendentElementsDo: block]
			enumerate: element descendentElements].