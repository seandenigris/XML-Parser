private
validateName
	(self usesNamespaces and: [self hasPrefix])
		ifTrue: [
			self namespaceScope
				validateAndResolvePrefix: self prefix
				ofName: self name]