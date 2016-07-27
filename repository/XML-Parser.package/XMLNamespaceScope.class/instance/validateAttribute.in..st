validation
validateAttribute: attrName in: attributeList
	| qualifiedAlias |
	
	attrName splitQualifiedNameInto: [:prefix :localName |
		prefix ifNil: [^ self].

		self validatePrefix: prefix.
		(self aliasesOf: prefix) do: [:alias |
			qualifiedAlias := alias qualifyName: localName.
			(attributeList includesKey: qualifiedAlias)
				ifTrue: [
					self
						errorAttribute: attrName
						aliases: qualifiedAlias
						with: (self resolvePrefix: prefix)]]].