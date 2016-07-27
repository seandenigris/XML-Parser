accessing
path
	| pathStream |

	pathStream := (String new: 16) writeStream.
	self printPathSegmentsOn: pathStream.
	^ pathStream contents.