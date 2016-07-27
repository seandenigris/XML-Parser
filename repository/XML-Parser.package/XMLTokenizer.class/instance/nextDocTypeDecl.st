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
				self nextMarkupToken].
			self expectNext: $]].
	streamReader skipSeparators.
	self expectNext: $>.

	self endParsingMarkup