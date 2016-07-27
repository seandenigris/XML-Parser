validating
validateAttributePrefixes: aDictionary
	"performance critical method"
	| namespacedAttributes |

	aDictionary keysDo: [:each | | prefix |
		(prefix := each xmlPrefixBeforeLocalName) size > 0 "optimization"
			ifTrue: [| namespace oldSize |
				"not initialized unless needed"
				namespacedAttributes
					ifNil: [namespacedAttributes := Set new: aDictionary size].
				namespace := self validateAndResolvePrefix: prefix.

				"checking size after is faster than includes:"
				oldSize := namespacedAttributes size.
				(namespacedAttributes
					add: namespace, (each xmlLocalNameAfterPrefix: prefix);
					size) > oldSize
					ifFalse: [self errorAttribute: each aliasesNamespace: namespace]]
			ifFalse: [self validateUnprefixedName: each]]