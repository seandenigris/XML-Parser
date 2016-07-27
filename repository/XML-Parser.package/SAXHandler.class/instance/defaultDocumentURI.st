private
defaultDocumentURI
	^ (input respondsTo: #path)
		ifTrue: [input path]
		ifFalse: [
			self configuration fileClient currentWorkingDirectory,
				(self identityHash printString copyWithFirst: $/)]