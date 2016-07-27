tests
testAfter
	| list |

	list := self listWithItems.
	self assert:
		(self listItems allSatisfy: [:each |
			(list after: each) = (self listItems after: each ifAbsent: [self defaultValue])]).
	self assert: (list after: self absentListItem) = self defaultValue.