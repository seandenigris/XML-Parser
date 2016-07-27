tests
testReplaceFromToWith
	| node |

	(node := self nodeClass new) replaceFrom: -1 to: -3 with: 'one'.
	self assert: node string = 'one'.

	node replaceFrom: 5 to: 3 with: (self nodeClass string: 'fourthree').
	self assert: node string = 'onefourthree'.

	node replaceFrom: 4 to: 7 with: ' two '.
	self assert: node string = 'one two three'.

	node replaceFrom: 14 to: 13 with: (self nodeClass string: ' four').
	self assert: node string = 'one two three four'.