private
validateName
	(self usesNamespaces and: [self hasPrefix])
		ifTrue: [
			self namespaceScope
				validatePrefix: self prefix
				ofElementName: self name]