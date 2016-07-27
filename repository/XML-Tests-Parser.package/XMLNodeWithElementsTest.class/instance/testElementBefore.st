tests
testElementBefore
	| root elementBefore |

	root := self newNodeWithElements firstElement.
	elementBefore := nil.
	root elements do: [:each |
		self assert: (root elementBefore: each) == elementBefore.
		elementBefore := each].