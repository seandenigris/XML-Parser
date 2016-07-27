changing context
resetAfter: aBlock
	| oldContext |

	oldContext := context.
	aBlock value.
	context := oldContext.