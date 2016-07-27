tests
testAtIfAbsent
	| list |

	list := self listWithItems.
	self
		assert: ((1 to: list size) allSatisfy: [:i | (list at: i ifAbsent: [self newListItem]) = (self listItems at: i)]);
		assert: (list at: 0 ifAbsent: [self newListItem]) = self newListItem;
		assert: (list at: list size + 1 ifAbsent: [self newListItem]) = self newListItem.