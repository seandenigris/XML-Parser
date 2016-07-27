tests
testReplaceFromToWith
	| node |

	(node := self nodeClass new) replaceFrom: -1 to: -3 with: 'one'.
	self assert: node string = 'one'.

	node replaceFrom: 1 to: 0 with: 'zero'.
	self assert: node string = 'zeroone'.

	node replaceFrom: 9 to: 7 with: (self nodeClass string: 'fourthree').
	self assert: node string = 'zeroonefourthree'.

	node replaceFrom: 8 to: 11 with: ' two '.
	self assert: node string = 'zeroone two three'.

	node replaceFrom: 0 to: 4 with: ''.
	self assert: node string = 'one two three'.

	node replaceFrom: 14 to: 13 with: (self nodeClass string: ' four').
	self assert: node string = 'one two three four'.