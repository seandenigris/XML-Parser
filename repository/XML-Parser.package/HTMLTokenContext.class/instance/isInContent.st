testing
isInContent
	^ super isInContent or: [self isInNonHTMLSection]