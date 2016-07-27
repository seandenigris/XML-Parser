tests
testBefore
	| list |

	list := self listWithItems.
	self assert:
		(self listItems allSatisfy: [:each |
			(list before: each) = (self listItems before: each ifAbsent: [self defaultValue])]).
	self assert: (list before: self absentListItem) = self defaultValue.