tests
testAppend
	| node |

	node := self nodeClass new.
	node append: 'one'.
	self assert: node string = 'one'.

	node append: (self nodeClass string: 'two').
	self assert: node string = 'onetwo'.

	node append: 'three'.
	self assert: node string = 'onetwothree'.