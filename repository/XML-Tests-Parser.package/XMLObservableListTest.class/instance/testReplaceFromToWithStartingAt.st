tests
testReplaceFromToWithStartingAt
	| list observer |

	super testReplaceFromToWithStartingAt.

	list := self listWithElements.
	observer := XMLRecordingListObserver new.
	list observer: observer.
	list
		replaceFrom: 2
		to: 3
		with: #('new1' 'new2' 'new3')
		startingAt: 2.
	
	self
		assertObserver: observer
		receivedNotificationOfRemoving: (self listElements at: 2)
		from: list.
	self
		assertObserver: observer
		receivedNotificationOfAdding: 'new2'
		to: list.
	self
		assertObserver: observer
		receivedNotificationOfRemoving: (self listElements at: 3)
		from: list.
	self
		assertObserver: observer
		receivedNotificationOfAdding: 'new3'
		to: list.