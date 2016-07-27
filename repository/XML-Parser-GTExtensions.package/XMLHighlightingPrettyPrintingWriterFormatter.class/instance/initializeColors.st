initialization
initializeColors
	self
		defaultColor: self class defaultDefaultColor;
		xmlDeclarationColor: self class defaultSecondaryMarkupColor;
		doctypeDeclarationColor: self class defaultSecondaryMarkupColor;
		piColor: self class defaultSecondaryMarkupColor;
		declarationColor: self class defaultPrimaryMarkupColor;
		tagColor: self class defaultPrimaryMarkupColor;
		quotedStringValueColor: self class defaultQuotedStringValueColor;
		entityReferenceColor: self class defaultEntityReferenceColor;
		commentColor: self class defaultCommentColor;
		cdataColor: self class defaultCDataColor