tokenizing dtd
nextAttributeType
	| nextChar type |

	type := streamWriter writeWith: [:writeStream |
		[self skipSeparatorsReplacingParameterEntities.
		(nextChar := streamReader peek) isNil
			or: [(String with: $# with: $> with: $' with:  $") includes: nextChar]]
			whileFalse: [
				(')|(' includes: nextChar)
					ifTrue: [writeStream nextPut: streamReader next]
					ifFalse: [
						writeStream
							nextPutAll: self nextNmtoken;
							nextPut: Character space]].
		writeStream contents].

	^ self removeTrailingSpacesFrom:  type.