tests
testPreviousElement 
	| root previousElement |

	root := self newNodeWithElements nodeAt: 2.
	root elements do: [:each |
		self assert: each previousElement == previousElement.
		previousElement := each].