assertions
assertList: aList receivedNotificationOfAdding: anElement
	self
		assertList: aList
		receivedNotificationOfBeforeAdding: anElement;
		assertList: aList
		receivedNotificationOfAfterAdding: anElement