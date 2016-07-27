tests
testPreviousNode
	| elementWithAttributes previousNode |

	super testPreviousNode.
	elementWithAttributes := self newElementWithAttributes.
	previousNode := nil.
	elementWithAttributes attributeNodes do: [:each |
		self assert: each previousNode == previousNode.
		previousNode := each].