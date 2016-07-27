tokenizing
nextTag
	| tagName attributes attributeName  nextChar |

	(streamReader peek = $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName asLowercase.

	attributes := OrderPreservingDictionary new: 10 withDefaultValue: ''.
	[streamReader skipSeparators.
	((nextChar := streamReader peek) isNil
		or: [nextChar == $>
			or: [nextChar == $/
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
			(self class isNonHTMLSectionTag: tagName)
				ifTrue: [
					nonHtmlElement := tagName.
					context enterNonHTMLSection]].
	self expectTerminator: $>.