private
addCodeIndex: aCodeIndex
	tally < codeIndexes size
		ifFalse: [
			codeIndexes :=
				(Array new: ((codeIndexes size * 2) max: 10))
					replaceFrom: 1
					to: tally
					with: codeIndexes
					startingAt: 1].
	codeIndexes at: (tally := tally + 1) put: aCodeIndex.