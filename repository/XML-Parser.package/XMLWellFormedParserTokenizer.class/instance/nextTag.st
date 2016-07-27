tokenizing
nextTag
	"performance critical method"
	| tagName attributes nextChar |

	(streamReader peek == $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName.

	attributes := OrderPreservingStringDictionary new: 10.
	"nil understands isXMLSeparator so is not tested for"
	[(nextChar := streamReader peek) isXMLSeparator
		and: [
			streamReader
				next;
				skipSeparators.
			((nextChar := streamReader peek) == $>
				or: [nextChar == $/]) not]]
		whileTrue: [| attributeName |
			attributeName := self nextName.
			streamReader skipSeparators.
			streamReader next == $=
				ifFalse: [self errorExpectedAttributeNameValueSeparator].
			streamReader skipSeparators.
			(attributes
				xmlAt: attributeName
				newPut: self nextAttributeValue)
				ifFalse: [self errorDuplicateAttribute: attributeName].
			"the ordering of these tests is optimized"
			(attributeName at: 1) == $x
				ifTrue: [
					driver hasUnhandledReservedAttributes
						ifFalse: [
							attributeName isXMLReservedAttributeName
								ifTrue: [driver haveUnhandledReservedAttributes]]]].
	driver
		handleStartTag: tagName
		attributes: attributes.

	nextChar == $/
		ifTrue: [
			streamReader next.
			driver handleEndTag: tagName].
	self expectTerminator.