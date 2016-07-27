searching
tagsNamed: aSymbol contentsDo: aBlock
	"Evaluate aBlock for all of the contents of the receiver
	if the receiver tag equals aSymbol. Pass the message on"

	(self isNamed: aSymbol)
		ifTrue: [self contentsDo: aBlock].
	super tagsNamed: aSymbol contentsDo: aBlock