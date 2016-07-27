initialization
setSAXHandler: aHandler
	saxHandler := aHandler.
	elementNester := self elementNesterClass new.
	doctypeDefinition := DTDDoctypeDefinition new.
	validator := (aHandler schema ifNil: [doctypeDefinition]) newValidator.
	externalSubsetURI := ''.
	isStandalone := false.
	hasUnhandledReservedAttributes := false.