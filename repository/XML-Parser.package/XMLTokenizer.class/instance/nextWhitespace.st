tokenizing
nextWhitespace
	| whitespace |

	(whitespace := streamReader nextWhitespace)
		ifNotEmpty: [driver handleWhitespace: whitespace].
	^ whitespace.