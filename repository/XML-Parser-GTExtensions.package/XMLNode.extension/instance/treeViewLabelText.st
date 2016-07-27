*XML-Parser-GTExtensions
treeViewLabelText
	"the label (text) of this node in a tree view"
	^ self asHighlightedTextWrittenWith: [:writer |
		self writeTreeViewLabelXMLOn: writer]