tests
testRemoveAttributeNode
	| element |

	element := self newElementWithAttributes.
	element attributeNodes copy do: [:each |
		self
			assert: (element removeAttributeNode: each) == each ;
			should: [element removeAttribute: each] raise: Error;
			deny: (element attributeNodes includes: each)].
	self assert: element attributeNodes isEmpty.