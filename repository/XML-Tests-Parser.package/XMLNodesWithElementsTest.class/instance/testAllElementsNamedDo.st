tests
testAllElementsNamedDo
	| nodeWithElements allElements namedElements |

	nodeWithElements := self newNodesWithElements.
	allElements := nodeWithElements allElements.
	namedElements := nodeWithElements allElementsNamed: 'c1'. 
	self
		should: [:block | nodeWithElements allElementsNamed: 'c1' do: block]
		enumerate: namedElements.