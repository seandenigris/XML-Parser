tokenizing
nextWhitespace
	| nextChar |

	buffer reset.
	[(nextChar := self peek) notNil
		and: [SeparatorTable includes: nextChar]]
		whileTrue: [buffer nextPut: self next].
	^ buffer stringContents.