testing
hasTrailingWhitespace
	| lastChar |

	^ (lastChar := self lastChar) notNil
		and: [lastChar isSeparator]