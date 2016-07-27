tokenizing dtd
nextSubsetToken
	streamReader skipSeparators.
	streamReader atEnd
		ifTrue: [^ self].

	streamReader peek == $%
		ifTrue: [^ self replaceParameterEntityReference].
	(context isInInternalSubset and: [streamReader peek == $]])
		ifTrue: [^ self nextEndInternalSubset].

	self expectNext: $<.
	streamReader peek == $?
		ifTrue: [^ self nextPIOrXMLDecl]
		ifFalse: [
			context isInExternalSubsetTextDeclaration
				ifTrue: [context enterExternalSubset]].

	self expectNext: $!.
	streamReader peek == $-
		ifTrue: [^ self nextComment].
	streamReader peek == $[
		ifTrue: [
			streamReader next.
			streamReader pushBack: self nextConditionalSection.
			^ self].

	self nextSubsetDeclaration.