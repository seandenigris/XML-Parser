accessing
resolveNamespace: aNamespace
	"Retrieve the URI of the given namespace prefix, if it is defined. A nil namespace
	returns the global namespace"

	^ self resolveNamespace: aNamespace ifUnbound: [nil]