searching
tagsNamed: aSymbol childrenDo: aOneArgumentBlock
	"Evaluate aOneArgumentBlock for all children who match"

	self elementsDo: [:each | each ifNamed: aSymbol do: aOneArgumentBlock]