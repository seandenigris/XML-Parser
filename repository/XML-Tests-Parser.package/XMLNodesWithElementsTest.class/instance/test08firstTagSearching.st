tests
test08firstTagSearching
	| node elements |

	node := self nodeClass new.
	elements := self newElementsNamed: #('foo' 'bar' 'prefix:foo' 'prefix:bar' 'bar' 'baz').
	node addNodes: (elements first: 2).
	node nodes first addNodes: (elements copyFrom: 3 to: 4).
	node nodes second addNodes: (elements copyFrom: 5 to: 6).
	self
		assert: (node findElementNamed: 'absent') isNil;
		assert: (node findElementNamed: 'foo' with: [:each | false]) isNil.

	self
		assert: (node findElementNamed: 'foo') = elements first;
		assert: (node findElementNamed: 'prefix:bar') = elements fourth;
		assert: (elements first findElementNamed: 'foo') = elements first.
	self assert: (node
		findElementNamed: 'bar'
		with: [:each | each = elements fifth]) = elements fifth.
	self assert: (elements first
		findElementNamed: 'foo'
		with: [:each | each = elements third]) = elements third.