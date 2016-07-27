assertions
assertList: aList receivedNotificationOfReplacing: anOldElement with: aNewElement
	self
		assertList: aList
		receivedNotificationOfBeforeAdding: aNewElement.
	self
		assertList: aList
		receivedNotificationOfRemoving: anOldElement.
	self
		assertList: aList
		receivedNotificationOfAfterAdding: aNewElement.