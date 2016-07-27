initialization
setByteMap: aByteMap codeIndexes: aCodeIndexList size: aSize
	((((codeTable := self newByteIndexedTable)
		at: 1 put: self newByteIndexedTable))
			at: 1 put: self newByteIndexedTable)
				at: 1 put: aByteMap.
	codeIndexes := aCodeIndexList.
	tally := aSize.