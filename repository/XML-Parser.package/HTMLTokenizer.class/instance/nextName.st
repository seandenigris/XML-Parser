tokenizing
nextName
	| nextChar |

	^ streamWriter writeWith: [:writeStream |
		 [(nextChar := streamReader peek) isNil
			or: [(HtmlNameDelimiters includes: nextChar)
				or: [(context isInDoctype and: [nextChar == $[])
					or: [context isInInternalSubset and: [nextChar == $]]]]]]
			whileFalse: [writeStream nextPut: streamReader next].

		writeStream contents].