tests
testAttributeNodes
	| element nodes |

	element := self newElementWithAttributes.
	nodes := element attributeNodes.
	self
		assert: (nodes isKindOf: XMLAttributeList);
		assert: nodes size = 4.
	self assert:
		(nodes collect: [:each | each name]) asArray =
			#('one' 'two' 'prefix:two' 'prefix:four').
	self assert:
		(nodes collect: [:each | each value]) asArray =
			#('1' '2' '3' '4').