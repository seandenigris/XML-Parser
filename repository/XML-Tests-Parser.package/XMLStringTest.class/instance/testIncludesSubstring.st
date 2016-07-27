tests
testIncludesSubstring
	| node |

	node := self nodeClass new.
	self
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
		deny: (node includesSubstring: 'onetwothree');
		deny: (node includesSubstring: (self nodeClass string: 'onetwothree')).
	node replaceFrom: 4 to: 3 with: 'two'.
	self
		assert: (node includesSubstring: 'onetwothree');
		assert: (node includesSubstring: (self nodeClass string: 'onetwothree')).