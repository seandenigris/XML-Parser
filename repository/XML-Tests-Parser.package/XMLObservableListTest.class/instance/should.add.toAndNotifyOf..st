assertions
should: aBlock add: anElement toAndNotifyOf: aList
	| observer |

	observer := XMLStubListObserver new.
	aList addObserver: observer.
	aBlock value.
	self
		assert: (aList includes: anElement);
		assertObserver: observer receivedNotificationOfAdding: anElement to: aList.