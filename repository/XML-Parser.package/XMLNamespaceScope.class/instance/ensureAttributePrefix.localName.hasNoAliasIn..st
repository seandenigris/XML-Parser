private
ensureAttributePrefix: aPrefix localName: aLocalName hasNoAliasIn: aDictionary
	| namespaceUri aliasingAttributeName |

	namespaceUri := self resolvePrefix: aPrefix.

	(self prefixesAliasing: aPrefix) do: [:aliasingPrefix |
		aliasingAttributeName := aliasingPrefix, ':', aLocalName.
		(aDictionary includesKey: aliasingAttributeName)
			ifTrue: [
				self
					errorAttribute: aliasingAttributeName
					aliases: aPrefix, ':', aLocalName
					with: namespaceUri]].