tests
testAttributeNodesAdding
	| element attributeNodesCopy |

	element := self newElementWithAttributes.
	attributeNodesCopy := element attributeNodes copy.
	attributeNodesCopy do: [:each |
		element attributeNodes addLast: each].
	self assert: element attributeNodes = attributeNodesCopy.

	attributeNodesCopy do: [:each |
		self
			should: [
				self newElementWithAttributes attributeNodes addLast: each]
			raise: XMLDOMException].