tokenizing - expecting
expectVersionDigit
	| nextChar |

	((nextChar := streamReader next) notNil
		and: [VersionDigitChars includes: nextChar])
		ifFalse: [
			self
				errorExpected: 'XML version digit'
				butGot: nextChar].
	^ nextChar.