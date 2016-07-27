tests
testReplaceAllWith
	| node |

	(node := self nodeClass new) replaceAll: 'old' with: 'new'.
	self assert: node string isEmpty.

	node string: 'one old two old three old'.
	node replaceAll: 'old' with: (self nodeClass string: 'new').
	self assert: node string = 'one new two new three new'.

	node replaceAll: 'new' with: ''.
	self assert: node string = 'one  two  three '.