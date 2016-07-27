private
space
	(self isCanonical and: [self hasTrailingWhitespace])
		ifFalse: [self stream space]