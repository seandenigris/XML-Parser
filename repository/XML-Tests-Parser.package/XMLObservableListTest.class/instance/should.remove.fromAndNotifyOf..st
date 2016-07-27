assertions
should: aBlock remove: anElement fromAndNotifyOf: aList
	| observer |

	observer := XMLStubListObserver new.
	aList addObserver: observer.
	aBlock value.
	self
		deny: (aList includes: anElement);
		assertObserver: observer receivedNotificationOfRemoving: anElement from: aList.