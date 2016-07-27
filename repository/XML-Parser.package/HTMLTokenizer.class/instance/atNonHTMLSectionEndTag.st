testing
atNonHTMLSectionEndTag
	(streamReader nextMatchAll: '</')
		ifFalse: [^ false].
	nonHtmlElement doWithIndex: [:each :i |
		(streamReader peek asLowercase == each)
			ifTrue: [streamReader next]
			ifFalse: [
				streamReader pushBack: '</', (nonHtmlElement copyFrom: 1to: i - 1).
				^ false]].
	streamReader pushBack: '</', nonHtmlElement.
	^ true.