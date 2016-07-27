tests
test1emptyElement
	self
		assertNode: XMLElement new hasTypes: #(isElement isContentNode);
		assertNodeHasNoChildren: XMLElement new