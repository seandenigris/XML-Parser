testing
isHandlerMessage: aMessage
	| category |

	category := saxHandler class whichCategoryIncludesSelector: aMessage selector.

	^ category asString beginsWith: 'handling'.