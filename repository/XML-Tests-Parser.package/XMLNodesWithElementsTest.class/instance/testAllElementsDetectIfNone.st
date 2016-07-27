tests
testAllElementsDetectIfNone
	| nodeWithElements allElements detectedElement |

	nodeWithElements := self newNodesWithElements.
	allElements := nodeWithElements allElements.
	detectedElement :=
		nodeWithElements
			allElementsDetect: [:each | each isNamed: 'prefix:c1']
			ifNone: ['absent'].
	self
		deny: detectedElement = 'absent';
		assert: (detectedElement isNamed: 'prefix:c1').
	self assert:	
		detectedElement ==
			(allElements
				detect: [:each | each isNamed: 'prefix:c1']
				ifNone: ['absent']).
	self assert:
		(nodeWithElements
			allElementsDetect: [:each | each isNamed: 'absent']
			ifNone: ['absent']) = 'absent'.