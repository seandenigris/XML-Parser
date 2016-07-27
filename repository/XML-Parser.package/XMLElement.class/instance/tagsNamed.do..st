searching
tagsNamed: aSymbol do: aOneArgumentBlock
	"If the receiver tag equals aSymbol, evaluate aOneArgumentBlock
	with the receiver. Continue the search"

	(self isNamed: aSymbol)
		ifTrue: [aOneArgumentBlock value: self].
	super tagsNamed: aSymbol do: aOneArgumentBlock