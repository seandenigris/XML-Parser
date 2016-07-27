tokenizing dtd
nextExternalId
	| extDefType systemId dir |
	extDefType := self nextLiteral.
	extDefType = 'PUBLIC'
		ifTrue: [
			streamReader skipSeparators.
			self nextPubidLiteral.
			streamReader skipSeparators.
			streamReader peek == $>
				ifFalse: [
					systemId := self nextSystemLiteral]].

	extDefType = 'SYSTEM'
		ifTrue: [
			streamReader skipSeparators.
			systemId := self nextSystemLiteral].

	systemId
		ifNil: [^nil].

	"The rest of this method only applies if we're reading aFileStream"
	(streamReader topStream isKindOf: FileStream)
		ifFalse: [^''].
	dir := streamReader topStream directory.
	^(dir fileExists: systemId)
		ifTrue: [(dir readOnlyFileNamed: systemId) stringContentsOfEntireFile]
		ifFalse: ['']