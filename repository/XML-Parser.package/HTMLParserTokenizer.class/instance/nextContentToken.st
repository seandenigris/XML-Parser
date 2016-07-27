tokenizing
nextContentToken
	context isInNonHTMLSection
		ifTrue: [self nextNonHTMLToken]
		ifFalse: [
			streamReader peek == $<
				ifTrue: [
					streamReader next.
					(streamReader atEnd not and: [streamReader peek isSeparator])
						ifTrue: [
							streamReader pushBack: '&lt;'.
							self nextPCDataToken]
						ifFalse: [self nextContentMarkupToken]]
				ifFalse: [self nextPCDataToken]]