initialization
setSAXDriver: aSaxdriver documentURI: aUri
	saxDriver := aSaxdriver.
	doctypeDefinition := aSaxdriver doctypeDefinition.
	documentUri := aUri.