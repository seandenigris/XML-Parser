tokenizing
nextContentToken
	| pcData |

	context isInNonHTMLSection
		ifTrue: [^ self nextNonHTMLToken].

	(pcData := self nextPCDataToken)
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