assertions
assertObserver: anObserver receivedNotificationOfAdding: anElement to: aList
	self
		assert: anObserver notifications first selector = self beforeAddingToNotification;
		assert: anObserver notifications first arguments = (Array with: anElement with: aList);
		assert: anObserver notifications second selector = self afterAddingToNotification;
		assert: anObserver notifications second arguments = (Array with: anElement with: aList)