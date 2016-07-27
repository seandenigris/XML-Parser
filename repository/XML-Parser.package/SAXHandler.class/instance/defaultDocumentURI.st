private
defaultDocumentURI
	^ (input respondsTo: #path)
		ifTrue: [input path]
		ifFalse: [
			self configuration fileClient currentWorkingDirectory,
				self class name asString, '.xml'].