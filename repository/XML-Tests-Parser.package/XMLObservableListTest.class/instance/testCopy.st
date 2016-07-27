tests
testCopy
	| list copy |

	super testCopy.
	list := self listWithElements.
	list observer: XMLRecordingListObserver new.
	copy := list copy.
	self deny: list observer == copy observer.