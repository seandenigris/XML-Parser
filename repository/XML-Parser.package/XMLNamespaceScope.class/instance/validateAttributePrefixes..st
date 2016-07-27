validation
validateAttributePrefixes: aDictionary
	"performance critical method"
	| namespacedAttributes |

	aDictionary keysDo: [:each | | prefix |
		(prefix := each qualifiedNamePrefix) isEmpty "avoid ifNotEmpty: closure overhead"
			ifTrue: [self validateUnprefixedName: each]
			ifFalse: [ | namespace oldSize |
				"not initialized unless needed"
				namespacedAttributes
					ifNil: [namespacedAttributes := Set new: aDictionary size].
				namespace := self validateAndResolvePrefix: prefix.

				"checking size after is faster than includes:"
				oldSize := namespacedAttributes size.
				namespacedAttributes add: namespace, (each qualifiedNameLocalPartFromPrefix: prefix).
				namespacedAttributes size > oldSize
					ifFalse: [self errorAttribute: each aliasesNamespace: namespace]]]