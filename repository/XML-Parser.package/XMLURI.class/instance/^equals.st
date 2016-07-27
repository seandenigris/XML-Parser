comparing
= anObject
	self == anObject
		ifTrue: [^ true].

	self class == anObject class
		ifFalse: [^ false].

	scheme = anObject scheme
		ifFalse: [^ false].
	hasAuthorityPrefix = anObject hasAuthorityPrefix
		ifFalse: [^ false].
	userInfo = anObject userInfo
		ifFalse: [^ false].
	host = anObject host
		ifFalse: [^ false].
	port = anObject port
		ifFalse: [^ false].
	pathSegments = anObject pathSegments
		ifFalse: [^ false].
	queryString = anObject queryString
		ifFalse: [^ false].
	fragment = anObject fragment
		ifFalse: [^ false].
	^ true.