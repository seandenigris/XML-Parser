parsing
parseScheme
	| oldPosition scheme |

	oldPosition := self position.
	scheme := self nextPercentEncodedDelimitedBy: SchemeDelimiters.
	(self peekFor: $:)
		ifTrue: [^ scheme asLowercase]
		ifFalse: [
			self position: oldPosition.
			^ ''].