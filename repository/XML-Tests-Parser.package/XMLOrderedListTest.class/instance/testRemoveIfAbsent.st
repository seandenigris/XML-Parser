tests
testRemoveIfAbsent
	| list |

	list := self listWithElements.
	self
		assert: (list remove: self singleElement ifAbsent: [nil]) = self singleElement;
		deny: (list includes: self singleElement);
		assert: (list remove: self absentElement ifAbsent: [nil]) isNil.