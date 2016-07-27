tests
testRemoveIfAbsent
	| list |

	super testRemoveIfAbsent.

	list := self listWithElements.
	self
		should: [list remove: self singleElement ifAbsent: [nil]]
		remove: self singleElement
		fromAndNotify: list.
	self
		assert: (list remove: self singleElement ifAbsent: [nil]) isNil;
		deny: list observer hasNotifications.