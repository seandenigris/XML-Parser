tests
testAllElementsNamedDo
	| nodeWithElements allElements namedElements |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	namedElements := nodeWithElements allElementsNamed: 'four'. 
	self
		should: [:block | nodeWithElements allElementsNamed: 'four' do: block]
		enumerate: namedElements.