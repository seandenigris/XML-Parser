tests
test6commentNodes
	| comment  |

	comment := XMLComment new.
	self
		assertComment: comment hasString: '';
		assertComment: (comment string: 'test') hasString: 'test';
		assertComment: (XMLComment string: 'test') hasString: 'test'.