initialization
setSAXHandler: aHandler
	saxHandler := aHandler.
	elementNester := self elementNesterClass new.
	externalSubsetUri := ''.
	isStandalone := false.
	hasUnhandledReservedAttributes := false.