tokenizing dtd
nextExternalIDSystemLiteralRequired: aBoolean
	| publicId  systemId |

	publicId := ''.
	systemId := ''.
	(streamReader atEnd not
		and: [streamReader peek == $P
			or: [streamReader peek == $S]])
		ifTrue: [
			streamReader peek == $P
				ifTrue: [
					self expectNextAll: 'PUBLIC'.
					self skipSeparatorsReplacingParameterEntities.
					publicId := self nextPubidLiteral.
					self skipSeparatorsReplacingParameterEntities.
					systemId := self nextSystemLiteralRequired: aBoolean]
				ifFalse: [
					self expectNextAll: 'SYSTEM'.
					self skipSeparatorsReplacingParameterEntities.
					systemId := self nextSystemLiteralRequired: true]].
	^ publicId -> systemId.