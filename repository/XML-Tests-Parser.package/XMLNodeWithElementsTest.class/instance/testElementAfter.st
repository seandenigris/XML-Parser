tests
testElementAfter
	| root after |

	root := self newNodeWithElements nodeAt: 2.
	root elements reversed do: [:each |
		self assert: (root elementAfter: each) == after.
		after := each].