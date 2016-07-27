private
findClassForEncoding: anEncodingName
	self preferredClasses do: [:each |
		(each canConvertEncoding: anEncodingName)
			ifTrue: [^ each]].

	(self isPreferred not
		and: [self canConvertEncoding: anEncodingName])
			ifTrue: [^ self].
	self allSubclassesDo: [:each |
		(each isPreferred not
			and: [each canConvertEncoding: anEncodingName])
			ifTrue: [^ each]].

	^ nil.