parsing
parseListValue
	| value oldSize |

	valueStream reset.
	[valueListStream atEnd
		or: [ListValueDelimiters includes: valueListStream peek]]
		whileFalse: [valueStream nextPut: valueListStream next].

	(value := valueStream contents)
		ifEmpty: [XMLValidationException signal: 'Empty list value'].
	(self isValidListValue: value)
		ifFalse: [XMLValidationException signal: 'Invalid value "', value, '" in list value'].

	oldSize := listValues size.
	listValues add: value.
	(listValues size > oldSize)
		ifFalse: [XMLValidationException signal: 'Duplicate "', value, '" in list'].