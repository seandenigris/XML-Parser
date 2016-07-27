tests
testIsString
	| node |

	node := self nodeClass new.
	self
		assert: (node isString: '');
		assert: (node isString: self nodeClass new);
		deny: (node isString: 'test');
		deny: (node isString: (self nodeClass string: 'test')).
	node string: 'test'.
	self
		assert: (node isString: 'test');
		assert: (node isString: (self nodeClass string: 'test'));
		deny: (node isString: '');
		deny: (node isString: self nodeClass new).