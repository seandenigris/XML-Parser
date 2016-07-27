tests
testRemoveAttributeNodeIfAbsent
	| element |

	element := self newElementWithAttributes.
	element attributeNodes copy do: [:each |
		self
			assert: (element removeAttributeNode: each ifAbsent: [#absent]) == each ;
			assert: (element removeAttributeNode: each ifAbsent: [#absent]) = #absent;
			deny: (element attributeNodes includes: each)].
	self assert: element attributeNodes isEmpty.