tokenizing
nextWhitespace
	| whitespace |

	(whitespace := streamReader nextWhitespace)
		ifNotEmpty: [self handleWhitespace: whitespace].
	^ whitespace.