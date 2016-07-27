class initialization
initializeHTMLTagInformation
	HtmlTagInformation := Dictionary new.

	self bodySectionElements do: [:each |
		(self htmlTagInfoFor: each) isBodySectionTag: true].
	self headSectionElements do: [:each |
		(self htmlTagInfoFor: each) isHeadSectionTag: true].

	self mutuallyExcludingTags keysAndValuesDo: [:key :value |
		(self htmlTagInfoFor: key) mutuallyExcludingTag: value].
	self nestableTagGroups keysAndValuesDo: [:key :value |
		(self htmlTagInfoFor: key) nestableTagGroup: value].

	self nonNestableElements do: [:each |
		(self htmlTagInfoFor: each) isNonNestable: true].
	self uniqueElements do: [:each | self htmlTagInfoFor: each].
	self voidElements do: [:each |
		(self htmlTagInfoFor: each) isSelfClosing: true].