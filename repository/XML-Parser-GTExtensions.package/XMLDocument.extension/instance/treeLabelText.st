*XML-Parser-GTExtensions
treeLabelText
	| writer |

	writer := XMLHighlightingWriter new.
	self writeXMLDeclarationOn: writer.
	^ writer asHighlightedText.