tests
testXMLLastOrNil
	self
		assert: self emptyList xmlLastOrNil isNil;
		assert: self listWithSingleItem xmlLastOrNil = self singleListItem;
		assert: self listWithItems xmlLastOrNil = self listItems last