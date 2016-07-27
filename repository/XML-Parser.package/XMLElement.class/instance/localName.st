accessing
localName
	"returns the local name of the receiver, which is diffrent from #name if
	#name is a qualified name"

	^ localName ifNil: [localName := self name xmlLocalNameAfterPrefix]