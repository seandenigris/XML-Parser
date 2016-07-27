tests
test6commentNodes
	| comment raw escaped |

	comment := XMLComment new.
	self
		assertNode: comment hasType: #isComment;
		assertComment: comment hasString: '';
		assertComment: (comment string: 'test') hasString: 'test';
		assertComment: (XMLComment string: 'test') hasString: 'test'.