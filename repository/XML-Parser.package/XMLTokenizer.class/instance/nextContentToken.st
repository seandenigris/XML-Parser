tokenizing
nextContentToken
	| pcData |

	pcData := self
		nextDelimitedBy: $< and: nil
		entityChar: $&
		entitySelector: #nextGeneralEntityReference
		normalizeWhitespace: false
		ignorableWhitespace: true.
	pcData
		ifNotEmpty: [
			driver handlePCData: pcData.
			^ self].

	streamReader peek == $<
		ifTrue: [self nextContentMarkupToken].