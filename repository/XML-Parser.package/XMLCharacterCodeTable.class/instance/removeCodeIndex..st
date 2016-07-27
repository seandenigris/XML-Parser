private
removeCodeIndex: aCodeIndex
	codeIndexes := codeIndexes copyWithout: aCodeIndex.
	tally := tally - 1.