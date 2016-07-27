accessing
resolvePrefix: aPrefix
	"Retrieve the URI of the given namespace prefix, if it is defined.

	If prefix is empty, nil, or xmlns, the default namespace will be returned."

	^ self resolvePrefix: aPrefix ifUnmapped: ['']