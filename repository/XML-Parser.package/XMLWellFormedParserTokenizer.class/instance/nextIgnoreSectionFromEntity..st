tokenizing - dtd
nextIgnoreSectionFromEntity: aParameterEntity
	| openSections |

	self
		expectNextAll: 'IGNORE'
		startingAt: 2. "the 'I' was already read"
	streamReader skipSeparators.
	self expectNext: $[.
	self topPushedBackEntity == aParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].

	"From the spec:
	The contents of an ignored conditional section MUST be parsed by
	ignoring all characters after the '[' following the keyword, except
	conditional section starts '<![' and ends ']]>', until the matching
	conditional section end is found. Parameter entity references MUST
	NOT be recognized in this process."
	openSections := 1.
	[openSections > 0
		and: [streamReader atEnd not]]
		whileTrue: [
			(streamReader nextMatchAll: ']]>')
				ifTrue: [openSections := openSections - 1]
				ifFalse: [
					(streamReader nextMatchAll: '<![')
						ifTrue: [openSections := openSections + 1]
						ifFalse: [streamReader next]]].

	openSections > 0
		ifTrue: [self errorUnterminatedIgnoreSections].