tokenizing
nextTag
	| tagName attributes attributeName  nextChar |

	(streamReader peek = $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName asLowercase.

	attributes := OrderPreservingDictionary new: 10 withDefaultValue: ''.
	[streamReader skipSeparators.
	((nextChar := streamReader peek) == $>
		or: [nextChar == $/
			or: [nextChar == nil
				or: [(attributeName := self nextName asLowercase) isEmpty]]])]
		whileFalse: [
			streamReader skipSeparators.
			self expectNext: $=.
			streamReader skipSeparators.
			attributes at: attributeName put: self nextAttributeValue].

	driver
		handleStartTag: tagName
		attributes: attributes
		namespaces: nil.
	streamReader peek == $/
		ifTrue: [
			streamReader next.
			driver handleEndTag: tagName]
		ifFalse: [
			(NonHtmlSectionTags includes: tagName)
				ifTrue: [context enterNonHTMLSection: tagName]].
	self expectTerminator: $>.