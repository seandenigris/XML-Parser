*XML-Parser-GTExtensions
treeNodeLabelText
	^ XMLHighlightingWriter new
		writeWith: [:writer | self writeTreeNodeLabelXMLOn: writer];
		asHighlightedText