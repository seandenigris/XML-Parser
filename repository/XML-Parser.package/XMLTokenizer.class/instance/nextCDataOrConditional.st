tokenizing
nextCDataOrConditional

	| nextChar conditionalKeyword |
	"Skip ["
	streamReader next.
	streamReader skipSeparators.
	nextChar := streamReader peek.
	nextChar == $%
		ifTrue: [
			self checkAndExpandReference: (self parsingMarkup ifTrue: [#dtd] ifFalse: [#content]).
			conditionalKeyword := self nextLiteral.
			streamReader skipSeparators.
			^streamReader next == $[
				ifTrue: [
						streamReader skipSeparators.
						self nextIncludeSection: (self conditionalInclude: conditionalKeyword)]
				ifFalse: [self errorExpected: '[' ]].

	nextChar == $C
		ifTrue: [
			^self nextLiteral = 'CDATA'
				ifTrue: [streamReader peek == $[
							ifTrue: [self nextCDataContent]
							ifFalse: [self errorExpected: '[' ]]
				ifFalse: [self errorExpected: 'CData']].
	self errorExpected: 'CData or declaration'
