tests
testIncludesSubstring
	| node |

	node := self nodeClass new.
	self
		assert: (node includesSubstring: '');
		assert: (node includesSubstring: (self nodeClass string: ''));
		deny: (node includesSubstring: 'one');
		deny: (node includesSubstring: (self nodeClass string: 'one')).
	node prepend: 'one'.
	self
		assert: (node includesSubstring: 'one');
		assert: (node includesSubstring: (self nodeClass string: 'one')).

	self
		deny: (node includesSubstring: 'three');
		deny: (node includesSubstring: (self nodeClass string: 'three')).
	node append: 'three'.
	self
		assert: (node includesSubstring: 'three');
		assert: (node includesSubstring: (self nodeClass string: 'three')).

	self
		deny: (node includesSubstring: 'two');
		deny: (node includesSubstring: (self nodeClass string: 'two')).
	node replaceFrom: 4 to: 3 with: 'two'.
	self
		assert: (node includesSubstring: 'two');
		assert: (node includesSubstring: (self nodeClass string: 'two')).

	self
		assert: (node includesSubstring: '');
		assert: (node includesSubstring: (self nodeClass string: '')).