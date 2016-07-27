namespacing
resolvePrefix: aPrefix
	"returns empty string if unresolvable"
	^ self
		resolvePrefix: aPrefix
		ifUnresolvable: ''