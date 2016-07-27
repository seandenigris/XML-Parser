tokenizing dtd
nextDocTypeDecl
	| nextChar |
	streamReader skipSeparators.
	self nextLiteral.
	streamReader skipSeparators.
	streamReader peek == $[
		ifFalse: [[nextChar := streamReader peek.
				nextChar == $> or: [nextChar == $[ ]] whileFalse: [streamReader next]].
	streamReader peek == $[
		ifTrue: [
			streamReader next.
			[streamReader skipSeparators.
			streamReader peek == $]] whileFalse: [
				self checkAndExpandReference: #dtd.
				self nextNode].
			streamReader next == $] 
				ifFalse: [self errorExpected: ']' ]].
	streamReader skipSeparators.
	streamReader next == $>
		ifFalse: [self errorExpected: '>' ].

	self endParsingMarkup