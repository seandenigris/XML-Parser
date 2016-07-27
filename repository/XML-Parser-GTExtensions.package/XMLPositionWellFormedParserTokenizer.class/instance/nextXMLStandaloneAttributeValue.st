tokenizing
nextXMLStandaloneAttributeValue
	| yesOrNo |

	driver handleStartQuotedStringValuePosition: self currentPosition.
	yesOrNo := super nextXMLStandaloneAttributeValue.
	driver handleEndQuotedStringValuePosition: self currentPosition - 1.

	^ yesOrNo.