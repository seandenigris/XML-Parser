tests
testElementAtIfAbsent
	| root  |

	root := self newNodeWithElements firstElement.
	self assert: (root elementAt: 'absent' ifAbsent: [#absent]) = #absent.
	root elements do: [:each |
		self assert:
			(root elementAt: each name ifAbsent: [#absent]) ==
				(root elements detect: [:element | element isNamed: each name])].