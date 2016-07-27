assertions
assertObserver: anObserver receivedNotificationOfAdding: anElement to: aList
	| firstNotification secondNotification |

	firstNotification := anObserver nextNotification.
	secondNotification := anObserver nextNotification.
	self
		assert:firstNotification selector = self beforeAddingToNotification;
		assert: firstNotification arguments = (Array with: anElement with: aList);
		assert: secondNotification selector = self afterAddingToNotification;
		assert: secondNotification arguments = (Array with: anElement with: aList)