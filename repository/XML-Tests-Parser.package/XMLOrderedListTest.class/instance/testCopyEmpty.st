tests
testCopyEmpty
	| list |

	list := self emptyList.
	self assertList: list copyEmpty isPartialCopyOf: list equalTo: self emptyList.

	list := self listWithSingleElement.
	self assertList: list copyEmpty isPartialCopyOf: list equalTo: self emptyList.

	list := self listWithElements.
	self assertList: list copyEmpty isPartialCopyOf: list equalTo: self emptyList.