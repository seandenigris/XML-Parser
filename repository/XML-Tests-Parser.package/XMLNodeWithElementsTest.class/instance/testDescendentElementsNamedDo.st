tests
testDescendentElementsNamedDo
	| nodeWithElements descendentElements namedElements |

	nodeWithElements := self newNodeWithElements.
	self
		should: [:block | nodeWithElements descendentElementsNamed: 'absent' do: block]
		enumerate: #().

	descendentElements := nodeWithElements descendentElements.
	namedElements := nodeWithElements descendentElementsNamed: 'four'. 
	self
		should: [:block | nodeWithElements descendentElementsNamed: 'four' do: block]
		enumerate: namedElements.