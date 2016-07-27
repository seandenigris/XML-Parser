private
codeIndexesDo: aBlock
	1 to: tally do: [:i | aBlock value: (codeIndexes at: i)]