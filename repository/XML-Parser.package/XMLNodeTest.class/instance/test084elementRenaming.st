tests
test084elementRenaming
	| node nodes elements |

	node := XMLNodeWithElements new.
	elements := self newElementsNamed: #(foo prefix:bar bar baz).
	node addNodes: (self interspersedWithNodes: elements).

	elements first name: #notfoo.
	self
		deny: (node includesElement: #foo);
		assert: (node elementAt: #foo) isNil;
		assert: (node elementsAt: #foo) isEmpty;
		assert: (node elementAt: #notfoo) = elements first.

	elements third namespace: 'prefix' uri: ''.
	self assert: (node elementsAt: #prefix:bar) = (elements copyFrom: 2 to: 3).

	elements fourth name: #bar.
	self assert: (node elementsAt: #bar) = elements allButFirst.

	elements fourth name: #foo.
	self assert: (node elementAt: #foo) = elements last.