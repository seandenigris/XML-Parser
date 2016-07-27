assertions
assertObserver: anObserver receivedNotificationOfAdding: anElement to: aList
	| firstNotification secondNotification |

	firstNotification := anObserver notifications removeFirst.
	secondNotification := anObserver notifications removeFirst.
	self
		assert:firstNotification selector = self beforeAddingToNotification;
		assert: firstNotification arguments = (Array with: anElement with: aList);
		assert: secondNotification selector = self afterAddingToNotification;
		assert: secondNotification arguments = (Array with: anElement with: aList)