searching
ifNamed: aString do: aOneArgumentBlock
	"If the receiver tag equals aString, evaluate aOneArgumentBlock with the receiver"

	(self isNamed: aString)
		ifTrue: [aOneArgumentBlock valueWithPossibleArgument: self]
