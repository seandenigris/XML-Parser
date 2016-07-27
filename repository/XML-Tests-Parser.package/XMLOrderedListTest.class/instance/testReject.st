tests
testReject
	| list |

	list := self listWithElements.
	self assert:
		(list reject: [:each | each = self singleElement]) =
			((self listClass newFrom: self listWithElements) copyWithout: self singleElement).