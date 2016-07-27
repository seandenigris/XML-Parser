tests
testElementAt
	| root  |

	root := self newNodeWithElements firstElement.
	self assert: (root elementAt: 'absent') isNil.
	root elements do: [:each |
		self assert:
			(root elementAt: each name) ==
				(root elements detect: [:element | element isNamed: each name])].