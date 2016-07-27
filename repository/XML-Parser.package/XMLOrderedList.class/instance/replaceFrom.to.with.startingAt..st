accessing
replaceFrom: aStartingIndex to: anEndingIndex with: aReplacementCollection startingAt: aReplacementIndex
	| offset |

	offset := 0.
	[aStartingIndex + offset <= anEndingIndex]
		whileTrue: [
			self
				at: aStartingIndex + offset
				put: (aReplacementCollection at: aReplacementIndex + offset).
			offset := offset + 1].