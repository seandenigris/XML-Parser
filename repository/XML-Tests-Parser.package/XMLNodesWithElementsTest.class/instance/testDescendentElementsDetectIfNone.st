tests
testDescendentElementsDetectIfNone
	| nodeWithElements descendentElements detectedElement |

	nodeWithElements := self newNodesWithElements.
	descendentElements := nodeWithElements descendentElements.
	detectedElement :=
		nodeWithElements
			descendentElementsDetect: [:each | each isNamed: 'prefix:c1']
			ifNone: ['absent'].
	self
		deny: detectedElement = 'absent';
		assert: (detectedElement isNamed: 'prefix:c1').
	self assert:	
		detectedElement ==
			(descendentElements
				detect: [:each | each isNamed: 'prefix:c1'] 
				ifNone: ['absent']).
	self assert:
		(detectedElement
			descendentElementsDetect: [:each | each isNamed: 'prefix:c1']
			ifNone: ['absent']) = 'absent'.