accessing
nextMatch: aFirstCharacter followedBy: aSecondCharacter
	"a more efficient two character version of nextMatchAll:"

	| oldCurrentLineNumber oldCurrentLineStartPosition |

	"inlined peek"
	(peekChar ifNil: [peekChar := self basicNext]) = aFirstCharacter
		ifFalse: [^ false].
	oldCurrentLineNumber := currentLineNumber.
	oldCurrentLineStartPosition := currentLineStartPosition.
	self next.

	self peek = aSecondCharacter
		ifFalse: [
			self pushBackCharacter: aFirstCharacter.
			currentPosition := currentPosition - 1.
			currentLineNumber := oldCurrentLineNumber.
			currentLineStartPosition := oldCurrentLineStartPosition.
			^ false].
	self next.
	^ true.