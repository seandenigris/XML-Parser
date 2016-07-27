streaming
skipSeparators
	| nextChar |

	[(nextChar := self peek) notNil
		and: [SeparatorTable includes: nextChar]]
		whileTrue: [self next].