tests
testContentStringAt
	| root |

	root := self newNodeWithNodes firstElement.
	root elementsDo: [:each |
		self assert: (root contentStringAt: each name) = each contentString].