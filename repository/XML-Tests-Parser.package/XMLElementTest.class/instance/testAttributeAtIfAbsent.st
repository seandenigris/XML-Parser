tests
testAttributeAtIfAbsent
	| element |

	element := self newElementWithAttributes.
	element attributeNodes do: [:each |
		self assert:
			(element
				attributeAt: each name
				ifAbsent: [#absent]) == each value].
	self assert: (element attributeAt: 'absent' ifAbsent: [#absent]) = #absent.