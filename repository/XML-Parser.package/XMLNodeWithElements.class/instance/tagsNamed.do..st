searching
tagsNamed: aSymbol do: aOneArgumentBlock
	"Search for nodes with tag aSymbol. When encountered evaluate aOneArgumentBlock"

	self recurse: [:each | each ifNamed: aSymbol do: aOneArgumentBlock]