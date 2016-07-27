tests
testCollectThenSelect
	| list |

	list := self listWithElements.
	self assert:
		(list collect: [:each | each asUppercase] thenSelect: [:each | each ~= 'ONE']) =
			(self listWithElements collect: [:each | each asUppercase]) allButFirst