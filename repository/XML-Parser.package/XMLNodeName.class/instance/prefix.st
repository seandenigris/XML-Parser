accessing
prefix
	| prefixSize |

	"faster than qualifiedNamePrefix if we already have the localPart"
	(prefixSize := self qualified size - self localPart size - 1) > 0
		ifTrue: [^ qualified copyFrom: 1 to: prefixSize]
		ifFalse: [^ '']