tests
testAtPut
	| list observer |

	super testAtPut.

	list := self listWithSingleElement.
	observer := XMLStubListObserver new.
	list observer: observer.
	list at: 1 put: self absentElement.
	self
		assertObserver: observer
		receivedNotificationOfRemoving: self singleElement
		from: list.
	self
		assertObserver: observer
		receivedNotificationOfAdding: self absentElement
		to: list.