resolving
resolveExternalEntityURI: anXMLURIOrURIString
	^ self resolveExternalEntityWith: [:maxSize | | path sourceSelector |
		path := anXMLURIOrURIString asXMLURI path.
		sourceSelector := self virtualFileClass sourceSelectorForPath: path.
		(self virtualFileClass respondsTo: sourceSelector)
			ifFalse: [
				self
					errorCannotResolveVirtualFilePath: path
					withSelector: sourceSelector].
		self virtualFileClass perform: sourceSelector]