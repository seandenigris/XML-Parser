tests
testCopyFromTo
	| list |

	list := self listWithElements.
	-1 to: list size + 1 do: [:start |
		start to: list size + 1 do: [:stop |
			self
				assertList: (list copyFrom: start to: stop)
				copiedFrom: list
				equals: (self listWithElements copyFrom: (start max: 1) to: (stop min: list size)).
			self
				assertList: (list copyFrom: start to: start - 1)
				copiedFrom: list
				equals: self emptyList.
			self assert: (self emptyList copyFrom: start to: stop) = self emptyList]].