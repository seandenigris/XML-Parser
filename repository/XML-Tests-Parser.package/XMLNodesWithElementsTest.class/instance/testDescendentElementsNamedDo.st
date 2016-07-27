tests
testDescendentElementsNamedDo
	| nodeWithElements descendentElements namedElements |

	nodeWithElements := self newNodesWithElements.
	descendentElements := nodeWithElements descendentElements.
	namedElements := nodeWithElements descendentElementsNamed: 'c1'. 
	self
		should: [:block | nodeWithElements descendentElementsNamed: 'c1' do: block]
		enumerate: namedElements.