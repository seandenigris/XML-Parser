tests
testNodeFactory
	| nodeWithElements newFactory |

	nodeWithElements := self newNodeWithElements.
	newFactory := XMLPluggableNodeFactory new.
	self
		assert: (nodeWithElements nodeFactory isKindOf: XMLNodeFactory);
		assert: (nodeWithElements nodeFactory: newFactory) nodeFactory == newFactory.