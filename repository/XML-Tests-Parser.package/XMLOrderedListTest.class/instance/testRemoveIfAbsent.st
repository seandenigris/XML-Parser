tests
testRemoveIfAbsent
	| list |

	list := self listWithItems.
	self assert:
		(list
			remove: self singleListItem
			ifAbsent: [self absentListItem]) = self singleListItem.
	self deny: (list includes: self singleListItem).
	self assert:
		(list
			remove: self singleListItem
			ifAbsent: [self absentListItem]) = self absentListItem.