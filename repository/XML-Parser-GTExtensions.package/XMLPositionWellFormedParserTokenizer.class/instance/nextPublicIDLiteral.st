tokenizing - dtd
nextPublicIDLiteral
	| publicID |

	driver handleStartQuotedStringValuePosition: self currentPosition.
	publicID := super nextPublicIDLiteral.
	driver handleEndQuotedStringValuePosition: self currentPosition - 1.

	^ publicID.