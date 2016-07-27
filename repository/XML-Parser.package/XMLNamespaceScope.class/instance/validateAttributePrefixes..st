validation
validateAttributePrefixes: aDictionary
	"performance critical method"
	| namespacedAttributes |

	aDictionary keysDo: [:each | | prefix |
		(prefix := each qualifiedNamePrefix) isEmpty "avoid ifNotEmpty: closure overhead"
			ifFalse: [ | namespace oldSize |
				"not initialized unless needed"
				namespacedAttributes
					ifNil: [namespacedAttributes := Set new: aDictionary size].
				namespace := self validateAndResolvePrefix: prefix ofName: each.

				"checking size after is faster than includes:"
				oldSize := namespacedAttributes size.
				namespacedAttributes add: namespace, (each qualifiedNameLocalPartFromPrefix: prefix).
				namespacedAttributes size > oldSize
					ifFalse: [
						XMLNamespaceException signal:
							'Attribute "', each, '" has alias for namespace "', namespace, '"']]].