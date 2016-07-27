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
			receivedNotificationOfRemoving: old.
		self
			assertList: list
			receivedNotificationOfAdding: new].
	self
		should: [list at: list size + 2 put: self newElement]
		raise: Error.
	self
		assert: list observer hasNotifications;
		assert:
			(self beforeAddingToNotifications includes:
				list observer nextNotification selector);
		deny: list observer hasNotifications.