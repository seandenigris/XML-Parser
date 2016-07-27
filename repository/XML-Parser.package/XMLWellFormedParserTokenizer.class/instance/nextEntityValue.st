tokenizing - dtd
nextEntityValue
	| quote value  |

	quote := streamReader next.
	context
		saveCurrent;
		enterLiteralValue.
		value := self nextEntityValueDelimitedBy: quote.
	context resetPrevious.
	self expectNext: quote.

	^ value.