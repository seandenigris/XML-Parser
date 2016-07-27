tokenizing
nextNonHTMLSectionToken
	| nonHtmlSection nextChar  |

	streamWriter writeWith: [:writeStream |
		[streamReader atEnd
			or: [self atNonHTMLSectionEndTag]]
			whileFalse: [
				(self class isNonHTMLCodeSectionTag: nonHtmlElement)
					ifTrue: [self nextNonHTMLCodeSectionOn: writeStream]
					ifFalse: [
						nextChar := streamReader next.			
						writeStream nextPut: nextChar]].
		nonHtmlSection := writeStream contents].
	nonHtmlElement := nil.
	context enterContent.

	driver handleNonHTMLSection: nonHtmlSection.