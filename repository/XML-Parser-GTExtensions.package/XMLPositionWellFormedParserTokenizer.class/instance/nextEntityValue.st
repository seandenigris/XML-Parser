tokenizing - dtd
nextEntityValue
	| entityValue |

	driver handleStartQuotedStringValuePosition: self currentPosition.
	entityValue := super nextEntityValue.
	driver handleEndQuotedStringValuePosition: self currentPosition - 1.

	^ entityValue.