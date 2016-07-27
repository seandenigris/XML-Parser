tokenizing - expecting
expectTerminator: aCharacter
	| nextChar |

	(nextChar := streamReader next) == aCharacter
		ifFalse: [
			self
				errorExpectedTerminator: aCharacter
				butGot: nextChar].
	^ nextChar.