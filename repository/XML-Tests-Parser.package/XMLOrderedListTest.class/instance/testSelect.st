tests
testSelect
	| list |

	list := self listWithElements.
	self assert:
		(list select: [:each | each ~= self singleElement]) =
			((self listClass newFrom: self listWithElements) copyWithout: self singleElement).