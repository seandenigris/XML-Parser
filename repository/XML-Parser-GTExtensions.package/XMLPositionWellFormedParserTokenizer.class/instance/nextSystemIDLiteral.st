tokenizing - dtd
nextSystemIDLiteral
	| systemID |

	driver handleStartQuotedStringValuePosition: self currentPosition.
	systemID := super nextSystemIDLiteral.
	driver handleEndQuotedStringValuePosition: self currentPosition - 1.

	^ systemID.