tests
testIndexOfSubstring
	| node |

	node := self nodeClass new.
	self
		assert: (node indexOfSubstring: 'one') isZero;
		assert: (node indexOfSubstring: (self nodeClass string: 'one')) isZero.
	node prepend: 'one'.
	self
		assert: (node indexOfSubstring: 'one') = 1;
		assert: (node indexOfSubstring: (self nodeClass string: 'one')) = 1.

	self
		assert: (node indexOfSubstring: 'two') isZero;
		assert: (node indexOfSubstring: (self nodeClass string: 'two')) isZero.
	node append: 'two'.
	self
		assert: (node indexOfSubstring: 'two') = 4;
		assert: (node indexOfSubstring: (self nodeClass string: 'two')) = 4.