validation
validateAttributes: attributeList
	"check all attribute namespaces are defined and not duplicated by aliasing"
	| prefix localName qualifiedAlias |

	attributeList keysDo: [:attrName |
		self
			validateAttribute: attrName
			in: attributeList]