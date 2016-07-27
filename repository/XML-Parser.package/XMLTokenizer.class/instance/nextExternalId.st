tokenizing dtd
nextExternalId
	| extDefType systemId dir |
	extDefType := self nextLiteral.
	extDefType = 'PUBLIC'
		ifTrue: [
			self skipSeparators.
			self nextPubidLiteral.
			self skipSeparators.
			self peek == $>
				ifFalse: [
					systemId := self nextSystemLiteral]].

	extDefType = 'SYSTEM'
		ifTrue: [
			self skipSeparators.
			systemId := self nextSystemLiteral].

	systemId
		ifNil: [^nil].

	"The rest of this method only applies if we're reading aFileStream"
	(self topStream isKindOf: FileStream)
		ifFalse: [^''].
	dir := self topStream directory.
	^(dir fileExists: systemId)
		ifTrue: [(dir readOnlyFileNamed: systemId) contentsOfEntireFile]
		ifFalse: ['']