tests
test081firstTagSearching
	| node elements |

	node := XMLNodeWithElements new.
	elements := self newElementsNamed: #('foo' 'bar' 'prefix:foo' 'prefix:bar' 'bar' 'baz').
	node addNodes: (elements first: 2).
	node nodes first addNodes: (elements copyFrom: 3 to: 4).
	node nodes second addNodes: (elements copyFrom: 5 to: 6).
	self
		assert: (node firstTagNamed: 'absent') isNil;
		assert: (node firstTagNamed: 'foo' with: [false]) isNil;
		assert: (node firstTagNamedAny: #('absent')) isNil;
		assert: (node firstTagNamedAny: #('foo') with: [false]) isNil.

	self
		assert: (node firstTagNamed: 'foo') = elements first;
		assert: (node firstTagNamed: 'prefix:bar') = elements fourth;
		assert: (node firstTagNamedAny: #('prefix:foo' 'prefix:bar' 'absent')) = elements third;
		assert: (node firstTagNamedAny: #('absent:bar' 'baz')) = elements last;
		assert: (elements first firstTagNamed: 'foo') = elements first;
		assert: (elements second firstTagNamedAny: #('foo' 'bar')) = elements second.
	self assert: (node
		firstTagNamed: 'bar'
		with: [:each | each = elements fifth]) = elements fifth.
	self assert: (node
		firstTagNamedAny: #('bar' 'baz')
		with: [:each | each = elements last]) = elements last.
	self assert: (elements first
		firstTagNamed: 'foo'
		with: [:each | each = elements third]) = elements third.
	self assert: (elements second
		firstTagNamedAny: #('bar')
		with: [:each | each = elements fifth]) = elements fifth.