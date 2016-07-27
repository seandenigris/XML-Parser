assertions
assertObserver: anObserver receivedNotificationOfRemoving: anElement from: aList
	| notification |

	notification := anObserver nextNotification.
	self
		assert: notification selector = self afterRemovingFromNotification;
		assert: notification arguments = (Array with: anElement with: aList)