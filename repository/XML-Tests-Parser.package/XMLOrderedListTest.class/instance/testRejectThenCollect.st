tests
testRejectThenCollect
	| list |

	list := self listWithElements.
	self assert:
		(list reject: [:each | each = self singleElement] thenCollect: [:each | each asUppercase]) =
			(self listClass newFrom:
				((self listElements copyWithout: self singleElement) collect: [:each | each asUppercase])).