testing
atNonHTMLSectionEndTag
	(streamReader nextMatchAll: '</')
		ifFalse: [^ false].
	context nonHtmlElement doWithIndex: [:each :i |
		(streamReader peek asLowercase == each)
			ifTrue: [streamReader next]
			ifFalse: [
				streamReader pushBack: '</', (context nonHtmlElement copyFrom: 1to: i - 1).
				^ false]].
	streamReader pushBack: '</', context nonHtmlElement.
	^ true.