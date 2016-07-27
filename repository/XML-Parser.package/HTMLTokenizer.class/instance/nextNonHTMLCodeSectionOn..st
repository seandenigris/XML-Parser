tokenizing
nextNonHTMLCodeSectionOn: aWriteStream
	| nextChar quote |

	nextChar := streamReader next.
	context isInNonHTMLComment
		ifTrue: [
			(nonHtmlCommentStarter = '//' and: [nextChar == Character lf])
				ifTrue: [context enterNonHTMLSection].
			(nonHtmlCommentStarter = '/*'
				and: [nextChar == $*
					and: [streamReader peek == $/]])
				ifTrue: [
					aWriteStream nextPut: nextChar.
					nextChar := streamReader next.
					context enterNonHTMLSection]]
		ifFalse: [
			(nextChar == $" or: [nextChar == $'])
				ifTrue: [
					aWriteStream
						nextPut: (quote := nextChar);
						nextPutAll: (streamReader upTo: quote)]
				ifFalse: [
					((nextChar == $/)
						and: [streamReader peek == $*
							or: [streamReader peek == $/]])
						ifTrue: [
							context enterNonHTMLComment.
							aWriteStream nextPut: $/.
							nextChar := streamReader next.
							nonHtmlCommentStarter := '/'  copyWith: nextChar]]].
	aWriteStream nextPut: nextChar.