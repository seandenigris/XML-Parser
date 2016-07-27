assertions
assertList: aList receivedNotificationOfAdding: anElement
	self
		assertNotification: aList observer nextNotification
		forElement: anElement
		andList: aList
		hasType: self beforeAddingToNotifications.
	self
		assertNotification: aList observer nextNotification
		forElement: anElement
		andList: aList
		hasType: self afterAddingToNotifications.