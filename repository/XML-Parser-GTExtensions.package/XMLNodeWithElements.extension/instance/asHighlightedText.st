*XML-Parser-GTExtensions
asHighlightedText
	| writer |

	writer := XMLHighlightingWriter new.
	self writeXMLOn: writer.
	^ writer asHighlightedText.