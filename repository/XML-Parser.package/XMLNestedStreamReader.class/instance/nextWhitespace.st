accessing
nextWhitespace
	| nextChar |

	buffer reset.
	[(nextChar := self peek) notNil
		and: [SeparatorCharacters includes: nextChar]]
		whileTrue: [buffer nextPut: self next].
	^ buffer stringContents.