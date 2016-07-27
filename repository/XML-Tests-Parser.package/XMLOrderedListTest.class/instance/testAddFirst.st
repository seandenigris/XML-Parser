tests
testAddFirst
	| list |

	list := self emptyList.
	self
		assert: (self listElements reversed allSatisfy: [:each | (list addFirst: each) = each]);
		assert: list = self listWithElements.

	self assert: (self listElements allSatisfy: [:each | (list addFirst: each) = each]).
	self assert:
		list =
			(self listClass newFrom: 
				(self allowsDuplicates
					ifTrue: [self listElements reversed, self listElements]
					ifFalse: [self listElements reversed])).