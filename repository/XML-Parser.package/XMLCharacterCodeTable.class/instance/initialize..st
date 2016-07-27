initialization
initialize: aCapacity
	codeTable := self newByteIndexedTable.
	codeIndexes := Array new: aCapacity.
	tally := 0.