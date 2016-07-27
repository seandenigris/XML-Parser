tests
testAllElementsDetect
	| nodeWithElements allElements detectedElement |

	nodeWithElements := self newNodesWithElements.
	allElements := nodeWithElements allElements.
	detectedElement := nodeWithElements allElementsDetect: [:each | each isNamed: 'prefix:c1'].
	self
		assert: detectedElement notNil;
		assert: (detectedElement isNamed: 'prefix:c1');
		assert: detectedElement == (allElements detect: [:each | each isNamed: 'prefix:c1']);
		assert: (nodeWithElements allElementsDetect: [:each | each isNamed: 'absent']) isNil.