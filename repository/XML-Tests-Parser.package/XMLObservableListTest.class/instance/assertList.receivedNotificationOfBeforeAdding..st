assertions
assertList: aList receivedNotificationOfBeforeAdding: anElement
	self
		assertNotification: aList observer nextNotification
		forElement: anElement
		andList: aList
		hasType: self beforeAddingToNotifications