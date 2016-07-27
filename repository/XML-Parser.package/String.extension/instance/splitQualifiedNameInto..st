*xml-parser
splitQualifiedNameInto: aTwoArgumentBlock
	"Split the name into namespace prefix and local name (the block arguments)."

	| i |
	i := self size.
	[i > 1]
		whileTrue: [
			((self at: i) == $:)
				ifTrue: [
					^ aTwoArgumentBlock
						value: (self copyFrom: 1 to: i - 1)
						value: (self copyFrom: i + 1 to: self size)].
			i := i - 1].
	^ aTwoArgumentBlock
		value: nil
		value: self