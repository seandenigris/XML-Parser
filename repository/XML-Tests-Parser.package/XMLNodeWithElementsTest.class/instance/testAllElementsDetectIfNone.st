tests
testAllElementsDetectIfNone
	| nodeWithElements allElements detectedElement |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	detectedElement :=
		nodeWithElements
			allElementsDetect: [:each | each isNamed: 'prefix:four']
			ifNone: [#absent].
	self
		deny: detectedElement = #absent;
		assert: (detectedElement isNamed: 'prefix:four').
	self assert:	
		detectedElement ==
			(allElements
				detect: [:each | each isNamed: 'prefix:four']
				ifNone: [#absent]).
	self assert:
		(nodeWithElements
			allElementsDetect: [:each | each isNamed: 'absent']
			ifNone: [#absent]) = #absent.