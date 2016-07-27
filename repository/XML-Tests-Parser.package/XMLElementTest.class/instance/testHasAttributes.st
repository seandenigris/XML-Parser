tests
testHasAttributes
	self
		deny: self nodeClass new hasAttributes;
		assert: self newElementWithAttributes hasAttributes;
		deny: self newElementWithAttributes removeAttributes hasAttributes