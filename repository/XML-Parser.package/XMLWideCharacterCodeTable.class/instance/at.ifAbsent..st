accessing
at: aCharacterCode ifAbsent: aBlock
	| table |

	table := codeTable.
	self
		bytesFrom: aCharacterCode
		do: [:each | (table := table at: each) ifNil: [^ aBlock value]]
		lastByte: [:lastByte | ^ (table at: lastByte) ifNil: aBlock].