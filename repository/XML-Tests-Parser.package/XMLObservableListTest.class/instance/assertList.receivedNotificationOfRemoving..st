assertions
assertList: aList receivedNotificationOfRemoving: anElement
	self
		assertNotification: aList observer nextNotification
		forElement: anElement
		andList: aList
		hasType: self afterRemovingFromNotifications