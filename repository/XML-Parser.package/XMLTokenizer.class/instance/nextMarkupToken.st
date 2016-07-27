tokenizing
nextMarkupToken
	| nextChar |
	"Skip < "
	streamReader next.
	nextChar := streamReader peek.
	nextChar == $! ifTrue: [
		"Skip !"
		streamReader next.
		nextChar := streamReader peek.
		nextChar == $- ifTrue: [^ self nextComment].
		nextChar == $[ ifTrue: [^ self nextCDataOrConditional].
		^ self parsingMarkup
			ifTrue: [self nextMarkupDeclaration]
			ifFalse: [self nextDocType]].
	nextChar == $? ifTrue: [^ self nextPI].
	self nextTag.