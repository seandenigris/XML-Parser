private
parseListValue
	| value oldSize |

	valueStream reset.
	[valueListStream atEnd
		or: [ListValueDelimiters includes: valueListStream peek]]
		whileFalse: [valueStream nextPut: valueListStream next].

	(value := valueStream contents)
		ifEmpty: [self errorEmptyListValue].
	(self isValidListValue: value)
		ifFalse: [self errorInvalidListValue: value].

	"checking the size avoids includes: hash lookup"
	oldSize := listValues size.
	listValues add: value.
	(listValues size > oldSize)
		ifFalse: [self errorDuplicateListValue: value].