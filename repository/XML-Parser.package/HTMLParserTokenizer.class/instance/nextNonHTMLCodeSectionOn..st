tokenizing
nextNonHTMLCodeSectionOn: aWriteStream
	| nextChar commentStartChar isInComment |

	isInComment := false.
	[streamReader atEnd or: [self atNonHTMLSectionEndTag]]
		whileFalse: [
			isInComment
				ifTrue: [
					nextChar := streamReader next.
					((commentStartChar == $/
						and: [nextChar == streamReader normalizedLineEndingChar])
							or: [(commentStartChar == $* and: [nextChar == $*])
								and: [streamReader peek == $/]])
						ifTrue: [
							commentStartChar == $*
								ifTrue: [
									aWriteStream nextPut: $*.
									nextChar := streamReader next].
							isInComment := false].
					aWriteStream nextPut: nextChar]
				ifFalse: [
					streamReader atQuote
						ifTrue: [self nextQuotedStringOn: aWriteStream]
						ifFalse: [
							(((nextChar := streamReader next) == $/)
								and: [streamReader peek == $*
									or: [streamReader peek == $/]])
								ifTrue: [
									isInComment := true.
									aWriteStream
										nextPut: $/;
										nextPut: (commentStartChar := streamReader next)]
								ifFalse: [aWriteStream nextPut: nextChar]]]].