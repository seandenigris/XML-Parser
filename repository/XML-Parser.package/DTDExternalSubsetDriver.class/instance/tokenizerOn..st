initialization
tokenizerOn: aStringOrStream
	| tokenizer |

	tokenizer := super tokenizerOn: aStringOrStream.
	tokenizer tokenContext enterExternalSubsetTextDeclaration.

	^ tokenizer.