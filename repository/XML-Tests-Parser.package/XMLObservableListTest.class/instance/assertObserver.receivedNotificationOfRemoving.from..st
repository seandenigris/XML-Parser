assertions
assertObserver: anObserver receivedNotificationOfRemoving: anElement from: aList
	self
		assert: anObserver notifications first selector = self afterRemovingFromNotification;
		assert: anObserver notifications first arguments = (Array with: anElement with: aList)