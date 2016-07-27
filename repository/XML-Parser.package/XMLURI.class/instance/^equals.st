comparing
= anObject
	self == anObject
		ifTrue: [^ true].

	self class == anObject class
		ifFalse: [^ false].

	self scheme = anObject scheme
		ifFalse: [^ false].
	self userInfo = anObject userInfo
		ifFalse: [^ false].
	self host = anObject host
		ifFalse: [^ false].
	self port = anObject port
		ifFalse: [^ false].
	self pathSegments = anObject pathSegments
		ifFalse: [^ false].
	self query = anObject query
		ifFalse: [^ false].
	self fragment = anObject fragment
		ifFalse: [^ false].

	^ true.