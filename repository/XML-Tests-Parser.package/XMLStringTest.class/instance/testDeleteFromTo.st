tests
testDeleteFromTo
	| node |

	node := self nodeClass new.
	node deleteFrom: 1 to: 0.
	self assert: node string isEmpty.

	node append: 'onetwothree'.
	node deleteFrom: 0 to: -1.
	node deleteFrom: 12 to: 13.
	self assert: node string = 'onetwothree'.

	node deleteFrom: 4 to: 6.
	self assert: node string = 'onethree'.

	node deleteFrom: 4 to: 8.
	self assert: node string = 'one'.

	node deleteFrom: 1 to: 3.
	self assert: node string isEmpty.