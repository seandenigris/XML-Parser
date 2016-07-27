tests
testRemoveFirstFew
	| list |

	super testRemoveFirstFew.

	1 to: self listElements size do: [:i |
		list := self listWithElements.
		self
			should: [list removeFirst: i]
			removeAll: (self listElementsFirst: i)
			fromAndNotify: list].
	list := self emptyList.
	self
		should: [list removeFirst: list size + 1] raise: Error;
		deny: list observer hasNotifications.