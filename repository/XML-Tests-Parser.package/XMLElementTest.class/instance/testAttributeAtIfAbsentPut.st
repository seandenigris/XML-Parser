tests
testAttributeAtIfAbsentPut
	| element |

	element := self newElementWithAttributes.
	element attributeNodes do: [:each |
		self assert:
			(element
				attributeAt: each name
				ifAbsentPut: ['newValue']) == each value].
	self
		assert: (element attributeAt: 'newName' ifAbsentPut: ['newValue']) = 'newValue';
		assert: (element attributeAt: 'newName') = 'newValue'.