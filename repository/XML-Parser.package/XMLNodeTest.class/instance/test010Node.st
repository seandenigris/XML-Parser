tests
test010Node
	| node parent tests accessors |

	node := XMLNode new.
	parent := XMLNode new.
	tests := (XMLNode methodsInCategory: #testing) copyWithout: #isEmpty.
	accessors := #(nextNode previousNode parent).
	self
		assert: node isEmpty;
		deny: (tests anySatisfy: [:each | node perform: each]);
		deny: (accessors anySatisfy: [:each | (node perform: each) notNil]).

	node parent: parent.
	self
		assert: node hasParent;
		assert: node parent = parent.

	self should: [node addContent: ''] raise: SAXParseException.