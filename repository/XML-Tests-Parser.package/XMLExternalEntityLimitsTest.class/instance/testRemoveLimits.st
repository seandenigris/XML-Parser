tests
testRemoveLimits
	|  parser resolver entityLimit entitySizeLimit |

	parser := SAXHandler new.
	entityLimit := 10.
	entitySizeLimit := 100.
	(resolver := parser externalEntityResolver)
		maxExternalEntities: entityLimit;
		maxExternalEntitySize: entitySizeLimit.
	self
		assert: resolver maxExternalEntities = entityLimit;
		assert: resolver maxExternalEntitySize = entitySizeLimit.

	parser removeLimits.
	self
		assert: resolver maxExternalEntities isNil;
		assert: resolver maxExternalEntitySize isNil.