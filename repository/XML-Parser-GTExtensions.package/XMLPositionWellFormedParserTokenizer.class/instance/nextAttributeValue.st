tokenizing
nextAttributeValue
	| attributeValue |

	driver handleStartQuotedStringValuePosition: self currentPosition.
	attributeValue := super nextAttributeValue.
	driver handleEndQuotedStringValuePosition: self currentPosition - 1.

	^ attributeValue.