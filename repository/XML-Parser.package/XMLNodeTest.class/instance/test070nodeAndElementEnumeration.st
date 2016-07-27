tests
test070nodeAndElementEnumeration
	| node nodes elements |

	node := XMLNodeWithElements new.
	self
		should: [:block | node nodesDo: block] enumerate: #();
		should: [:block | node elementsDo: block] enumerate: #().

	elements := self newElements: 3.
	nodes := self interspersedWithNodes: elements.
	node addNodes: nodes.
	self
		should: [:block | node nodesDo: block] enumerate: nodes;
		should: [:block | node elementsDo: block] enumerate: elements.