tests
testRemoveAttributeIfAbsent
	| element |

	element := self newElementWithAttributes.
	element attributeNodes copy do: [:each |
		self
			assert: (element removeAttribute: each name ifAbsent: [#absent]) = each value;
			assert: (element removeAttribute: each name ifAbsent: [#absent]) = #absent;
			deny: (element includesAttribute: each name)].
	self assert: element attributeNodes isEmpty.