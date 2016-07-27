tests
testReplaceFromToWithStartingAt
	super testReplaceFromToWithStartingAt.

	1 to: self listElements size do: [:start |
		start to: self listElements size do: [:stop | | list old new |
			list := self listWithElements.
			old := self listElements copyFrom: start to: stop.
			new := self changedListElements copyFrom: start to: stop.
			list
				replaceFrom: start
				to: stop
				with: self changedListElements
				startingAt: start.
			old with: new do: [:oldElement :newElement |
				self
					assertList: list
					receivedNotificationOfRemoving: oldElement.
				self
					assertList: list
					receivedNotificationOfAdding: newElement].
			self deny: list observer hasNotifications]].