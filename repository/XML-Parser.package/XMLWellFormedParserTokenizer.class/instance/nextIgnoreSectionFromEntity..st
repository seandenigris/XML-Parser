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