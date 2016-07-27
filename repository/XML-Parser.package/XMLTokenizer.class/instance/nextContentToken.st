tokenizing
nextContentToken
	| pcData |

	pcData := self
		nextDelimitedBy: $< and: nil
		entityChar: $&
		normalizeWhitespace: false
		ignorableWhitespace: true.
	pcData
		ifNotEmpty: [
			driver handlePCData: pcData.
			^ self].

	streamReader peek == $<
		ifTrue: [
			streamReader next.
			self nextContentMarkupToken].