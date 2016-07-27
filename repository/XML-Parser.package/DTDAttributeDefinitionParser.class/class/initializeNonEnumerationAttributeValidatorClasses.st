class initialization
initializeNonEnumerationAttributeValidatorClasses
	(NonEnumerationAttributeValidatorClasses := Dictionary new)
		at: 'CDATA' put: XMLCDataAttributeValidator;
		at: 'ID' put: XMLIDAttributeValidator;
		at: 'IDREF' put: XMLIDRefAttributeValidator;
		at: 'IDREFS' put: XMLIDRefsAttributeValidator;
		at: 'ENTITY' put: XMLEntityAttributeValidator;
		at: 'ENTITIES' put: XMLEntitiesAttributeValidator;
		at: 'NMTOKEN' put: XMLNmtokenAttributeValidator;
		at: 'NMTOKENS' put: XMLNmtokensAttributeValidator