tests
testRemoveLast
	| list observer |

	super testRemoveLast.

	list := self listWithSingleElement.
	self
		should: [list removeLast]
		remove: self singleElement
		fromAndNotifyOf: list.

	observer := XMLRecordingListObserver new.
	list observer: observer.
	self
		should: [list removeLast] raise: Error;
		deny: observer hasNotifications.