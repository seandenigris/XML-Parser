initialization
on: aStringOrStream
	super on: aStringOrStream.

	contentHandler := self defaultContentHandlerClass new.
	lexicalHandler := self defaultLexicalHandlerClass new.
	declarationHandler := self defaultDeclarationHandlerClass new.