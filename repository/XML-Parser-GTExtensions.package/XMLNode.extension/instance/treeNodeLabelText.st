*XML-Parser-GTExtensions
treeNodeLabelText
	^ self asHighlightedTextWrittenWith: [:writer | self writeTreeNodeLabelXMLOn: writer]