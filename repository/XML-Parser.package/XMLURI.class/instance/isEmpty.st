testing
isEmpty
	"optimization to avoid parsing"
	(self uriString notNil
		and: [self uriString isEmpty])
		ifTrue: [^ true].

	self hasScheme
		ifTrue: [^ false].
	self hasAuthority
		ifTrue: [^ false].
	self hasPath
		ifTrue: [^ false].
	self hasQuery
		ifTrue: [^ false].
	self hasFragment
		ifTrue: [^ false].

	^ true.