tokenizing
nextTag
	"performance critical method"
	| tagName attributes namespaces nextChar |

	(streamReader peek == $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName.

	attributes := OrderPreservingDictionary new: 10 withDefaultValue: ''.
	[streamReader skipSeparators.
	((nextChar := streamReader peek) == $>
		or: [nextChar == $/
			or: [nextChar == nil]])]
		whileFalse: [ | attributeName attributeValue |
			attributeName := self nextName.
			streamReader skipSeparators.
			self expectNext: $=.
			streamReader skipSeparators.
			attributeValue := self nextAttributeValue.
	
			(attributeName at: 1) == $x
				ifTrue: [
					(attributeName isXmlnsAttributeName
						and: [driver usesNamespaces])
						ifTrue: [
							"initialize only if needed"
							(namespaces
								ifNil: [namespaces := OrderPreservingDictionary new: 5 withDefaultValue: ''])
								at:
									((attributeName size > 6)
										ifTrue: [attributeName copyFrom: 7 to: attributeName size]
										ifFalse: [''])
								put: attributeValue]
						ifFalse: [							
							attributeName isReservedAttributeName
								ifTrue: [driver haveUnhandledReservedAttributes].
							attributes at: attributeName put: attributeValue]]
				ifFalse: [attributes at: attributeName put: attributeValue]].

	driver
		handleStartTag: tagName
		attributes: attributes
		namespaces: namespaces.

	streamReader peek == $/
		ifTrue: [
			streamReader next.
			driver handleEndTag: tagName].
	self expectTerminator: $>.