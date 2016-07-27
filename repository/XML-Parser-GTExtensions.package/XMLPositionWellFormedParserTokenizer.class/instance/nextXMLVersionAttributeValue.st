tokenizing
nextXMLVersionAttributeValue
	| version |

	driver handleStartQuotedStringValuePosition: self currentPosition.
	version := super nextXMLVersionAttributeValue.
	driver handleEndQuotedStringValuePosition: self currentPosition - 1.

	^ version.