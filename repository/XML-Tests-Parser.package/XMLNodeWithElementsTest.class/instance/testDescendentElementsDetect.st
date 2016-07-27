tests
testDescendentElementsDetect
	| nodeWithElements descendentElements detectedElement |

	nodeWithElements := self newNodeWithElements.
	descendentElements := nodeWithElements descendentElements.
	detectedElement := nodeWithElements descendentElementsDetect: [:each | each isNamed: 'prefix:four'].
	self
		assert: detectedElement notNil;
		assert: (detectedElement isNamed: 'prefix:four');
		assert: detectedElement == (descendentElements detect: [:each | each isNamed: 'prefix:four']);
		assert: (detectedElement descendentElementsDetect: [:each | each isNamed: 'prefix:four']) isNil.