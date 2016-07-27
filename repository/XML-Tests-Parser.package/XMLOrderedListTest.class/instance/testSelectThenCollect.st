tests
testSelectThenCollect
	| list |

	list := self listWithElements.
	self assert:
		(list select: [:each | each ~= self singleElement] thenCollect: [:each | each asUppercase]) =
			(self listClass newFrom:
				((self listElements copyWithout: self singleElement) collect: [:each | each asUppercase])).