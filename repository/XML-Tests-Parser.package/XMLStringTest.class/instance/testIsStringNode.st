tests
testIsStringNode
	| node |

	node := self nodeClass new.
	self
		assert: (node isStringNode: '');
		assert: (node isStringNode: self nodeClass new);
		deny: (node isStringNode: 'test');
		deny: (node isStringNode: (self nodeClass string: 'test')).
	node string: 'test'.
	self
		assert: (node isStringNode: 'test');
		assert: (node isStringNode: (self nodeClass string: 'test'));
		deny: (node isStringNode: '');
		deny: (node isStringNode: self nodeClass new).