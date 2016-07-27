tests
testDescendentElementsDetect
	| nodeWithElements descendentElements detectedElement |

	nodeWithElements := self newNodesWithElements.
	descendentElements := nodeWithElements descendentElements.
	detectedElement := nodeWithElements descendentElementsDetect: [:each | each isNamed: 'prefix:c1'].
	self
		assert: detectedElement notNil;
		assert: (detectedElement isNamed: 'prefix:c1');
		assert: detectedElement == (descendentElements detect: [:each | each isNamed: 'prefix:c1']);
		assert: (detectedElement descendentElementsDetect: [:each | each isNamed: 'prefix:c1']) isNil.