tests
testAddContent
	| node |

	node := self nodeClass new.
	node addContent: 'one'.
	self assert: node string = 'one'.

	node addContent: (self nodeClass string: 'two').
	self assert: node string = 'onetwo'.

	node addContent: 'three'.
	self assert: node string = 'onetwothree'.