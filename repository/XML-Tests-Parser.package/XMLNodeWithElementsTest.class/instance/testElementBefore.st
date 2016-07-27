tests
testElementBefore
	| root before |

	root := self newNodeWithElements nodeAt: 2.
	root elements do: [:each |
		self assert: (root elementBefore: each) == before.
		before := each].