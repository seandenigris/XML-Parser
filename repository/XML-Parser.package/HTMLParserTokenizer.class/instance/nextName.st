tokenizing
nextName
	| nextChar |

	nameStream reset.
	 [(nextChar := streamReader peek) == nil
		or: [(HtmlNameDelimiters includes: nextChar)
			or: [(context isInDoctype and: [nextChar == $[])
				or: [context isInInternalSubset and: [nextChar == $]]]]]]
		whileFalse: [nameStream nextPut: streamReader next].
	^ nameStream contents.