validation
validateAttributes: attributeList
	"check all attribute namespaces are defined and not duplicated by aliasing"
	| namespace localName qualifiedAlias |

	attributeList keysDo: [:attrName |
		attrName splitQualifiedNameInto: [:ns :ln |
			namespace := ns.
			localName := ln].
		namespace ifNotNil: [
			(self currentScope aliasesFor: namespace) do: [:alias |
				qualifiedAlias := alias , ':' , localName.
				(attributeList includesKey: qualifiedAlias)
					ifTrue: [
						self
							errorAttribute: attrName
							isAliasFor: qualifiedAlias
							withURI: (self resolveNamespace: namespace)]]]]