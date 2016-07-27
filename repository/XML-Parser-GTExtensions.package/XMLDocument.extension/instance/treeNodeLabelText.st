*XML-Parser-GTExtensions
treeNodeLabelText
	| writer |

	writer := XMLHighlightingWriter new.
	self writeXMLDeclarationOn: writer.
	^ writer asHighlightedText.