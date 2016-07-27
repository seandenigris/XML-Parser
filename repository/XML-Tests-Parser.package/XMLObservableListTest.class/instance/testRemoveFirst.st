tests
testRemoveFirst
	| list observer |

	super testRemoveFirst.

	list := self listWithSingleElement.
	self
		should: [list removeFirst]
		remove: self singleElement
		fromAndNotifyOf: list.

	observer := XMLRecordingListObserver new.
	list observer: observer.
	self
		should: [list removeFirst] raise: Error;
		deny: observer hasNotifications.
	