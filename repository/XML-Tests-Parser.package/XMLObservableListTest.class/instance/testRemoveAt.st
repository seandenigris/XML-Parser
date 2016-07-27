tests
testRemoveAt
	| list observer |

	super testRemoveAt.

	list := self listWithSingleElement.
	self
		should: [list removeAt: 1]
		remove: self singleElement
		fromAndNotifyOf: list.

	observer := XMLRecordingListObserver new.
	list observer: observer.
	self
		should: [list removeAt: 1] raise: Error;
		deny: observer hasNotifications.