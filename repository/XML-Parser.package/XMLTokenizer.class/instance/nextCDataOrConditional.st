tokenizing
nextCDataOrConditional

	| nextChar conditionalKeyword |
	"Skip ["
	streamReader next.
	streamReader skipSeparators.
	nextChar := streamReader peek.
	nextChar == $%
		ifTrue: [
			self checkAndExpandReference: (self isParsingMarkup ifTrue: [#dtd] ifFalse: [#content]).
			conditionalKeyword := self nextLiteral.
			streamReader skipSeparators.
			self expectNext: $[.
			streamReader skipSeparators.
			^ self nextIncludeSection: (self conditionalInclude: conditionalKeyword)].

	self
		expectLiteral: 'CDATA';
		expectNext: $[;
		nextCDataContent.