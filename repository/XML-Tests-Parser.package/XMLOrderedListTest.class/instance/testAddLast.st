tests
testAddLast
	| list |

	list := self emptyList.
	self
		assert: (self listElements allSatisfy: [:each | (list addLast: each) = each]);
		assert: list = self listWithElements.

	self assert: (self listElements allSatisfy: [:each | (list addLast: each) = each]).
	self assert:
		list =
			(self listClass newFrom: 
				(self allowsDuplicates
					ifTrue: [self listElements, self listElements]
					ifFalse: [self listElements])).