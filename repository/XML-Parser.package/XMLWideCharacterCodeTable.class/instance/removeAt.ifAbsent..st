removing
removeAt: aCharacterCode ifAbsent: aBlock
	| table value |

	table := codeTable.
	self
		bytesFrom: aCharacterCode
		do: [:each | (table := table at: each) ifNil: [^ aBlock value]]
		lastByte: [:lastByte |
			(value := table at: lastByte)
				ifNil: [^ aBlock value].
			table at: lastByte put: nil.
			self removeCodeIndex: aCharacterCode.
			^ value].