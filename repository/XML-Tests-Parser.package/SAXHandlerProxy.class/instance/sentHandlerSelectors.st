accessing
sentHandlerSelectors
	^ (self sentHandlerMessages collect: [:each | each selector]) asArray.