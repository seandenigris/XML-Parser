*xml-parser
splitQualifiedNameInto: aTwoArgumentBlock
	"Split the name into namespace prefix and local name (the block arguments)."

	| i |
	i := self lastIndexOf: $: startingAt: self size ifAbsent: [0].
	^ aTwoArgumentBlock
		value: ((i > 1) ifTrue: [self copyFrom: 1 to: (i - 1)] ifFalse: [nil])
		value: (self copyFrom: i + 1 to: self size)