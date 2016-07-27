*XML-Parser
qualifiedNamePrefix
	"Split the name into namespace prefix
	(Optimized code)"
	| i |

	i := self size - 1.
	[i > 1]
		whileTrue: [
			((self at: i) == $:)
				ifTrue: [^ (self copyFrom: 1 to: i - 1)].
			i := i - 1].
	^ ''.