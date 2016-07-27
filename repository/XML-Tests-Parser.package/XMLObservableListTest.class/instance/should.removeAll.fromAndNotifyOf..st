assertions
should: aBlock removeAll: anElementCollection fromAndNotifyOf: aList
	| observer |

	observer := XMLStubListObserver new.
	aList observer: observer.
	aBlock value.
	anElementCollection do: [:each |
		self deny: (aList includes: each).
		self
			assertObserver: observer
			receivedNotificationOfRemoving: each
			from: aList].