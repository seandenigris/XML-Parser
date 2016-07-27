private
cr
	(self omitsLineBreaks or: [self atStart])
		ifTrue: [^ self].

	self nextPutAll: self lineBreak.
	self isCanonical
		ifFalse: [self writeIndent].