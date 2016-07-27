tests
testCopy
	| list |

	list := self emptyList.
	self assertList: list copy isCopyOf: list.

	list := self listWithSingleElement.
	self assertList: list copy isCopyOf: list.

	list := self listWithElements.
	self assertList: list copy isCopyOf: list.