private
resolveEntityWith: aBlock
	| result |

	self checkExternalEntityLimit.
	result := aBlock value: self maxExternalEntitySize.
	self incrementTotalResolvedEntities.

	^ result.