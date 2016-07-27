assertions
should: aBlock addAll: anElementCollection toAndNotify: aList
	aList observer clearNotifications.
	aBlock value.
	anElementCollection do: [:each |
		self assert: (aList includes: each).
		self 
			assertList: aList
			receivedNotificationOfAdding: each].