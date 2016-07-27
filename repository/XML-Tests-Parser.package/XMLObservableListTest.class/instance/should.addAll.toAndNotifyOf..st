assertions
should: aBlock addAll: anElementCollection toAndNotifyOf: aList
	| observer |

	observer := XMLStubListObserver new.
	aList addObserver: observer.
	aBlock value.
	anElementCollection do: [:each |
		self assert: (aList includes: each).
		self 
			assertObserver: observer
			receivedNotificationOfAdding: each
			to: aList].