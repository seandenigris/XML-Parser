tests
testRemoveAttribute
	| element |

	element := self newElementWithAttributes.
	element attributeNodes copy do: [:each |
		self
			assert: (element removeAttribute: each name) = each value;
			should: [element removeAttribute: each name] raise: Error;
			deny: (element includesAttribute: each name)].
	self assert: element attributeNodes isEmpty.