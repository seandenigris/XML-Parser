tests
testAtPut
	| list observer |

	super testAtPut.

	list := self listWithSingleElement.
	observer := XMLRecordingListObserver new.
	list observer: observer.
	list at: 1 put: self newElement.
	self
		assertObserver: observer
		receivedNotificationOfRemoving: self singleElement
		from: list.
	self
		assertObserver: observer
		receivedNotificationOfAdding: self newElement
		to: list.