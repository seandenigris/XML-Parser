tests
testAttributeNodes
	| element nodes |

	element := self newElementWithAttributes.
	nodes := element attributeNodes.
	self
		assert: (nodes isKindOf: XMLAttributeList);
		assert: nodes size = 4;
		assert: (nodes collect: [:each | each name]) asArray = #('one' 'three' 'prefix:three' 'prefix:six');
		assert: (nodes collect: [:each | each value]) asArray = #('two' 'four' 'five' 'seven').