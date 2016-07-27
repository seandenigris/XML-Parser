tests
testDescendentElementsDetectIfNone
	| nodeWithElements descendentElements detectedElement |

	nodeWithElements := self newNodeWithElements.
	descendentElements := nodeWithElements descendentElements.
	detectedElement :=
		nodeWithElements
			descendentElementsDetect: [:each | each isNamed: 'prefix:four']
			ifNone: [#absent].
	self
		deny: detectedElement = #absent;
		assert: (detectedElement isNamed: 'prefix:four').
	self assert:	
		detectedElement ==
			(descendentElements
				detect: [:each | each isNamed: 'prefix:four'] 
				ifNone: [#absent]).
	self assert:
		(detectedElement
			descendentElementsDetect: [:each | each isNamed: 'prefix:four']
			ifNone: [#absent]) = #absent.