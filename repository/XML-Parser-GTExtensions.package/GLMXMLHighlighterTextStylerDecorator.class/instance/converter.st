accessing
converter
	| converter |

	self encodingName
		ifEmpty: [^ nil].

	(converter := TextConverter newForEncoding: encodingName)
		ifNil: [self error: 'Cannot convert encoding: "', encodingName, '"'].

	((converter respondsTo: #useLittleEndian:)
		and: [encodingName asLowercase endsWith: '-le'])
		ifTrue: [converter useLittleEndian: true].

	^ converter.