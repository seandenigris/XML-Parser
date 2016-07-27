initialization
setSAXHandler: aHandler
	saxHandler := aHandler.
	elementNester := self elementNesterClass new.
	hasUnhandledReservedAttributes := false.