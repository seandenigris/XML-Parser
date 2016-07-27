tokenizing - dtd
nextPublicIDLiteral
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedPublicIDLiteralStartButGot: quote].

	writeStream reset.
	"it's not enough to test for nil and PublicIDChars inclusion because
	(PublicIDChars includes: $') = true (double quoted pubids can contain
	single quotes), so the terminating quote must be tested for first to
	handle single quoted pubids correctly"
	[(nextChar := streamReader next) == nil
		or: [nextChar == quote
			or: [(PublicIDChars includes: nextChar) not]]]
		whileFalse: [writeStream nextPut: nextChar].

	nextChar == quote
		ifFalse: [
			self
				errorExpectedPublicIDLiteralEnd: quote
				butGot: nextChar].

	^ writeStream contents.