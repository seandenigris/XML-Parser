streaming
skipSeparators
	| nextChar |

	[(nextChar := self peek) notNil
		and: [SeparatorCharacters includes: nextChar]]
		whileTrue: [self next].