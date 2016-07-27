*XML-Parser-GTExtensions
asHighlightedText
	^ XMLHighlightingWriter new
		writeWith: [:writer | self writeXMLOn: writer];
		asHighlightedText