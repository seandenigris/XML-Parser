parsing
parseScheme
	| oldPosition scheme |

	oldPosition := self position.
	scheme := self nextPercentEncodedDelimitedBy: ':/@?#%'.
	(self peekFor: $:)
		ifTrue: [^ scheme asLowercase]
		ifFalse: [
			self position: oldPosition.
			^ ''].