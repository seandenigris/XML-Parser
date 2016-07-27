tokenizing
nextContentToken
	| pcData |

	streamReader peek == $<
		ifTrue: [
			streamReader next.
			^ self nextContentMarkupToken].
	pcData := self
		nextDelimitedBy: $< and: nil
		entityChar: $&
		normalizeWhitespace: false
		ignorableWhitespace: true.
	pcData
		ifNotEmpty: [driver handlePCData: pcData].

		