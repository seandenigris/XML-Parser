testing
isInNonHTMLSection
	^ context == #inNonHTMLSection or: [self isInNonHTMLComment]