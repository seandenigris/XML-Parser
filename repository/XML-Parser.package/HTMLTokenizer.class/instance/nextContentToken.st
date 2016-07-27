tokenizing
nextContentToken
	| pcData |

	pcData :=
		context isInNonHTMLSection
			ifTrue: [self nextNonHTMLSectionToken]
			ifFalse: [self nextPCDataToken].
	pcData
		ifNotEmpty: [driver handlePCData: pcData]
		ifEmpty: [
			streamReader peek == $<
				ifTrue: [
					streamReader next.
					(streamReader atEnd not and: [streamReader peek isSeparator])
						ifTrue: [
							streamReader pushBack: '&lt;'.
							driver handlePCData: pcData.
							^ self].
			self nextContentMarkupToken]]