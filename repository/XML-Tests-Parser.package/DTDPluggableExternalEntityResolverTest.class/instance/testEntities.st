tests
testEntities
	| resolver replacementAssociation |

	resolver := self newResolver.
	self
		assert: resolver entities class == Dictionary;
		assert: resolver entities isEmpty.

	resolver entities: self entityAssociations.
	self assert: resolver entities = self entityDictionary.

	replacementAssociation := 'new.ent' asXMLURI -> self newEntityReplacement.
	resolver entities: (Array with: replacementAssociation).
	self assert: resolver entities = (Dictionary with: replacementAssociation).

	resolver := self resolverClass entities: self entityAssociations.
	self
		assert: resolver class == self resolverClass;
		assert: resolver entities = self entityDictionary.