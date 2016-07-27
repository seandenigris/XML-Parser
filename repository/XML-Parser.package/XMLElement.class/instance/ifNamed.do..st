searching
ifNamed: aSymbol do: aOneArgumentBlock
	"If the receiver tag equals aSymbol, evaluate aOneArgumentBlock with the receiver"

	(self isNamed: aSymbol)
		ifTrue: [aOneArgumentBlock valueWithPossibleArgument: self]
