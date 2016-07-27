tests
testPrepend
	| node |

	node := self nodeClass new.
	node prepend: 'three'.
	self assert: node string = 'three'.

	node prepend: (self nodeClass string: 'two').
	self assert: node string = 'twothree'.

	node prepend: 'one'.
	self assert: node string = 'onetwothree'.