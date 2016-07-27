printing
printContentOn: aStream
	| lastChar |

	self string ifEmpty: [^ self].

	((lastChar := aStream peekLast) isNil
		or: [lastChar isSeparator
			or: [self string first isSeparator]])
		ifFalse: [aStream space].

	aStream nextPutAll: self string.