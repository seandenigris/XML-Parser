assertions
should: aBlock removeAll: anElementCollection fromAndNotify: aList
	aList observer clearNotifications.
	aBlock value.
	anElementCollection do: [:each |
		self deny: (aList includes: each).
		self
			assertList: aList
			receivedNotificationOfRemoving: each].