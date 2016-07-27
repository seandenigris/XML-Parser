tests
testBeforeIfAbsent
	| list |

	list := self listWithItems.
	self assert:
		(self listItems allSatisfy: [:each |
			(list before: each ifAbsent: [self newListItem]) =
				(self listItems before: each ifAbsent: [self newListItem])]).
	self assert: (list before: self absentListItem ifAbsent: [self newListItem]) = self newListItem.