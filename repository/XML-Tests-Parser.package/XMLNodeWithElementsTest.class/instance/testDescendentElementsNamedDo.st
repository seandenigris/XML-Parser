tests
testDescendentElementsNamedDo
	| nodeWithElements descendentElements namedElements |

	nodeWithElements := self newNodeWithElements.
	descendentElements := nodeWithElements descendentElements.
	namedElements := nodeWithElements descendentElementsNamed: 'four'. 
	self
		should: [:block | nodeWithElements descendentElementsNamed: 'four' do: block]
		enumerate: namedElements.