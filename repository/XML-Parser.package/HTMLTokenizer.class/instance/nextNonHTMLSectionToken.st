tokenizing
nextNonHTMLSectionToken
	| nextChar quote |

	^ streamWriter writeWith: [:writeStream |
		[streamReader atEnd
			or: [self atNonHTMLSectionEndTag]]
			whileFalse: [
				nextChar := streamReader next.
				context isInNonHTMLComment
					ifTrue: [
						(nonHtmlCommentStarter = '//' and: [nextChar == Character lf])
							ifTrue: [context enterNonHTMLSection].
						(nonHtmlCommentStarter = '/*'
							and: [nextChar == $*
								and: [streamReader peek == $/]])
							ifTrue: [
								writeStream nextPut: nextChar.
								nextChar := streamReader next.
								context enterNonHTMLSection]]
					ifFalse: [
						(nextChar == $" or: [nextChar == $'])
							ifTrue: [
								writeStream
									nextPut: (quote := nextChar);
									nextPutAll: (streamReader upTo: quote)]
							ifFalse: [
								((nextChar == $/)
									and: [streamReader peek == $*
										or: [streamReader peek == $/]])
									ifTrue: [
										context enterNonHTMLComment.
										writeStream nextPut: $/.
										nextChar := streamReader next.
										nonHtmlCommentStarter := '/'  copyWith: nextChar]]].
				writeStream nextPut: nextChar].
		writeStream contents].
	