tests
testAtPut
	| list |

	super testAtPut.

	list := self listWithElements.
	1 to: list size do: [:i | | old new |
		old := list at: i.
		new := self changedListElements at: i.
		list at: i put: new.
		self
			assertList: list
			receivedNotificationOfReplacing: old
			with: new].
	self
		should: [list at: list size + 2 put: self newElement]
		raise: Error.
	self
		assertList: list
		receivedNotificationOfBeforeAdding: self newElement.
	self deny: list observer hasNotifications.