assertions
assertObserver: anObserver receivedNotificationOfRemoving: anElement from: aList
	| notification |

	notification := anObserver notifications removeFirst.
	self
		assert: notification selector = self afterRemovingFromNotification;
		assert: notification arguments = (Array with: anElement with: aList)