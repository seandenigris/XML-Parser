tokenizing
nextCharacterReferenceOnWriteStream
	"returns true if writeStream is written to, false otherwise"
	| codePoint |

	"skip #"
	streamReader next.
	(context isContentContext
		and: [driver replacesContentEntityReferences not])
		ifTrue: [
			nameStream reset.
			(codePoint := streamReader nextIntegerPrintedOn: nameStream)
				ifNil: [self errorExpectedIntegerCharacterReference].
			(self characterFromCodePoint: codePoint)
				ifNil: [self errorInvalidCharacterReferenceCodePoint: codePoint].
			self expectNext: $;.
			writeStream
				nextPutAll: '&#';
				nextPutAll: nameStream contents;
				nextPut: $;]
		ifFalse: [| character |
			(codePoint := streamReader nextInteger)
				ifNil: [self errorExpectedIntegerCharacterReference].
			(character := self characterFromCodePoint: codePoint)
				ifNil: [self errorInvalidCharacterReferenceCodePoint: codePoint].
			self expectNext: $;.
			writeStream nextPut: character].
	^ true.