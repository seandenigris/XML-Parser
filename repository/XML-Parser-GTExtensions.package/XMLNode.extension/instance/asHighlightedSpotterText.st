*XML-Parser-GTExtensions
asHighlightedSpotterText
	^ XMLHighlightingWriter new
		writeWith: [:writer |
			writer formatter indentString: '  '.
			self writeXMLOn: writer];
		asHighlightedText