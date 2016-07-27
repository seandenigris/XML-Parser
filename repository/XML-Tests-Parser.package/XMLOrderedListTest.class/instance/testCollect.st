tests
testCollect
	self assert:
		(self listWithElements collect: [:each | each asUppercase]) =
			(self listClass newFrom: (self listElements collect: [:each | each asUppercase]))