tokenizing
nextXMLEncodingAttributeValue
	| encoding |

	driver handleStartQuotedStringValuePosition: self currentPosition.
	encoding := super nextXMLEncodingAttributeValue.
	driver handleEndQuotedStringValuePosition: self currentPosition - 1.

	^ encoding.