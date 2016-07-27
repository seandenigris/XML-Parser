tests
testAttributeNodeAtIfAbsent
	| element  |

	element := self newElementWithAttributes.
	element attributeNodes do: [:each |
		self assert:
			(element
				attributeNodeAt: each name
				ifAbsent: [#absent]) = each].
	self assert:
		(element
			attributeNodeAt: 'two'
			ifAbsent: [#absent]) = element attributeNodes second.
	self assert:
		(element
			attributeNodeAt: 'absent'
			ifAbsent: [#absent]) = #absent.