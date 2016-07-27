accessing
at: aCharacterCode put: aValue
	| table |

	table := codeTable.
	self
		bytesFrom: aCharacterCode
		do: [:each |
			table := (table at: each) ifNil: [table at: each put: self newByteIndexedTable]]
		lastByte: [:lastByte |
			(table at: lastByte)
				ifNil: [self addCodeIndex: aCharacterCode].
			^ table at: lastByte put: aValue].