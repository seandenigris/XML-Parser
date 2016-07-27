private
defaultDocumentURI
	| client |

	(input respondsTo: #path)
		ifTrue: [^ input path].

	^ (client := self configuration fileClient)
		combineRelative: self identityHash printString
		withBase: client currentWorkingDirectory.