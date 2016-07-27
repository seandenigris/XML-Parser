tests
testEquals
	self
		assertList: self emptyList equals: self emptyList;
		assertList: self listWithSingleElement equals: self listWithSingleElement;
		assertList: self listWithElements equals: self listWithElements;
		denyList: self emptyList equals: self listWithSingleElement;
		denyList: self emptyList equals: self listWithElements;
		denyList: self listWithSingleElement equals: self listWithElements