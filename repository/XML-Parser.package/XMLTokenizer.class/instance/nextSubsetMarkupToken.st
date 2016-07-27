tokenizing dtd
nextSubsetMarkupToken
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