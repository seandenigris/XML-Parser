private
furtherNormalizeAttributeValueIn: anAttributeDictionary
	| attributeAssociation |

	attributeAssociation :=
		anAttributeDictionary
			associationAt: self attribute
			ifAbsent: [^ self].

	attributeAssociation value:
		(self furtherNormalizeAttributeValue: attributeAssociation value).