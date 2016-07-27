accessing
nextWhitespace
	| nextChar |

	writeBuffer reset.
	[(nextChar := self peek) notNil
		and: [SeparatorCharacters includes: nextChar]]
		whileTrue: [writeBuffer nextPut: self next].
	^ writeBuffer stringContents.