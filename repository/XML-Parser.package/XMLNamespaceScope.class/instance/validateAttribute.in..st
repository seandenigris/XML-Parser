validation
validateAttribute: anAttributeName in: aDictionary
	| namespaceUri aliasingAttributeName |
	
	anAttributeName splitQualifiedNameInto: [:prefix :localName |
		prefix ifNil: [^ self].
		self validatePrefix: prefix.
		namespaceUri := self resolvePrefix: prefix.

		(self prefixesAliasing: prefix) do: [:aliasingPrefix |
			aliasingAttributeName := aliasingPrefix, ':', localName.
			(aDictionary includesKey: aliasingAttributeName)
				ifTrue: [
					self
						errorAttribute: aliasingAttributeName
						aliases: anAttributeName
						with: namespaceUri]]].