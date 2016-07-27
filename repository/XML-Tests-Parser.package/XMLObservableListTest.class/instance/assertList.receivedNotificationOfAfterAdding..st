assertions
assertList: aList receivedNotificationOfAfterAdding: anElement
	self
		assertNotification: aList observer nextNotification
		forElement: anElement
		andList: aList
		hasType: self afterAddingToNotifications