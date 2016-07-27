tokenizing dtd
nextAttributeType
	| nextChar type |

	type := streamWriter writeWith: [:writeStream |
		[self skipSeparatorsReplacingParameterEntities.
		(nextChar := streamReader peek) isNil
			or: [(String with: $# with: $> with: $' with:  $") includes: nextChar]]
			whileFalse: [writeStream nextPut: streamReader next].
		writeStream contents].
	^ self removeTrailingSpacesFrom: type.