tests
testElementAfter
	| root elementAfter |

	root := self newNodeWithElements firstElement.
	elementAfter := nil.
	root elements reverseDo: [:each |
		self assert: (root elementAfter: each) == elementAfter.
		elementAfter := each].