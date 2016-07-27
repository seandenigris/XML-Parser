tokenizing
nextNonHTMLToken
	| nonHtmlSection |

	streamWriter writeWith: [:writeStream |
		(self isNonHTMLCodeSectionTag: context nonHtmlElement)
			ifTrue: [self nextNonHTMLCodeSectionOn: writeStream] 
			ifFalse: [self nextNonHTMLSectionOn: writeStream].
		nonHtmlSection := writeStream contents].
	context enterContent.

	driver handleNonHTMLSection: nonHtmlSection.