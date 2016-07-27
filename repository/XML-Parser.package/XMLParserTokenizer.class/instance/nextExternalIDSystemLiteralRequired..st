tokenizing - dtd
nextExternalIDSystemLiteralRequired: aBoolean
	| publicId systemId |

	(streamReader atEnd not
		and: [streamReader peek == $P
			or: [streamReader peek == $S]])
		ifTrue: [
			streamReader peek == $P
				ifTrue: [
					self
						expectNextAll: 'PUBLIC';
						skipSeparatorsReplacingParameterEntities.
					publicId := self nextPubidLiteral.

					self skipSeparatorsReplacingParameterEntities.
					systemId := self nextSystemLiteralRequired: aBoolean]
				ifFalse: [
					self
						expectNextAll: 'SYSTEM';
						skipSeparatorsReplacingParameterEntities.
					systemId := self nextSystemLiteralRequired: true]].

	^ (publicId ifNil: ['']) -> (systemId ifNil: ['']).