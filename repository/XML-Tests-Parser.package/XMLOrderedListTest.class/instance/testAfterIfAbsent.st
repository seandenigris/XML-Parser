tests
testAfterIfAbsent
	| list |

	list := self listWithItems.
	self assert:
		(self listItems allSatisfy: [:each |
			(list after: each ifAbsent: [self newListItem]) =
				(self listItems after: each ifAbsent: [self newListItem])]).
	self assert: (list after: self absentListItem ifAbsent: [self newListItem]) = self newListItem.