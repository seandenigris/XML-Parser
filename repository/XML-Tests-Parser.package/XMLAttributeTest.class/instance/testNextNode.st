tests
testNextNode
	| elementWithAttributes nextNode |

	super testNextNode.
	elementWithAttributes := self newElementWithAttributes.
	nextNode := nil.
	elementWithAttributes attributeNodes reverseDo: [:each |
		self assert: each nextNode == nextNode.
		nextNode := each].