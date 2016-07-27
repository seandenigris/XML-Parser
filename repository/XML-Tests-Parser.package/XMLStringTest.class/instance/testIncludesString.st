tests
testIncludesString
	| node |

	node := self nodeClass new.
	self
		deny: (node includesString: 'one');
		deny: (node includesString: (self nodeClass string: 'one')).
	node prepend: 'one'.
	self
		assert: (node includesString: 'one');
		assert: (node includesString: (self nodeClass string: 'one')).

	self
		deny: (node includesString: 'three');
		deny: (node includesString: (self nodeClass string: 'three')).
	node append: 'three'.
	self
		assert: (node includesString: 'three');
		assert: (node includesString: (self nodeClass string: 'three')).

	self
		deny: (node includesString: 'onetwothree');
		deny: (node includesString: (self nodeClass string: 'onetwothree')).
	node replaceFrom: 4 to: 3 with: 'two'.
	self
		assert: (node includesString: 'onetwothree');
		assert: (node includesString: (self nodeClass string: 'onetwothree')).