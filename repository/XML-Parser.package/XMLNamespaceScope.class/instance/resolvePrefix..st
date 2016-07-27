accessing
resolvePrefix: aPrefix
	"Retrieve the URI of the given namespace prefix, if it is defined."

	^ self resolvePrefix: aPrefix ifUnmapped: ['']