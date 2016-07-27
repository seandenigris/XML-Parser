tests
test02addingElements
	| node nodes elements children |

	node := self nodeClass new.
	elements := self newElements: 6.
	nodes := self newStrings: 6.
	children := self intersperse: elements with: nodes.

	self
		should: [node addNodes: (elements copyFrom: 2 to: 3)]
		addElements: (elements copyFrom: 2 to: 3)
		to: node.
	self
		should: [node addNode: nodes second after: elements second]
		addNode: nodes second
		to: node.
	self
		should: [node addNode: nodes third after: elements third]
		addNode: nodes third
		to: node.
	self
		should: [node addNodeFirst: elements first]
		addElement: elements first
		to: node.
	self
		should: [node addNode: nodes first before: elements second]
		addNode: nodes first
		to: node.
	self
		should: [node nodes add: elements fourth]
		addElement: elements fourth
		to: node.
	self
		should: [node addNode: nodes fourth after: elements fourth]
		addNode: nodes fourth
		to: node.
	self
		should: [node addNode: elements fifth after: nodes fourth]
		addElement: elements fifth
		to: node.
	self
		should: [node addNodes: (nodes allButFirst: 4)]
		addNodes: (nodes allButFirst: 4)
		to: node.
	self
		should: [node addNode: (elements sixth) before: nodes sixth]
		addElement: elements sixth
		to: node.

	self
		assertNode: node hasChildren: children;
		assertNode: node hasElements: elements.

	self
		should: [node addNode: (XMLElement new parent: self nodeClass new)] raise: Error;
		should: [node addNode: elements first] raise: Error.