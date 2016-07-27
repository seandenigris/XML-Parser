tokenizing
nextXMLDeclarationOrPrologToken
	streamReader peek == $<
		ifTrue: [
			streamReader next.
			streamReader peek == $?
				ifTrue: [| target |
					streamReader next.
					(target := self nextPITarget) = 'xml'
						ifTrue: [^ self nextXMLDeclaration]
						ifFalse: [
							context := context prologContext.
							^ self nextPIWithTarget: target]].
			context := context prologContext.
			^ self nextNonPIPrologOrContentToken].

	"other prolog tokens can have whitespace before them, so the doc
	does not need to start with an < for them"
	context := context prologContext.
	self nextPrologToken.