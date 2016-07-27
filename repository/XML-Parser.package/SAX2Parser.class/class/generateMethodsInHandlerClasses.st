private 
generateMethodsInHandlerClasses
	"
	self generateMethodsInHandlerClasses
	"

	(Array
		with: SAXContentHandler -> #'handling - content'
		with: SAXLexicalHandler -> #'handling - lexical'
		with: SAXDeclarationHandler -> #'handling - declaration')
		do: [:handlerClassAndCategory | | handlerClass handlerCategory |
			handlerClass := handlerClassAndCategory key.
			handlerCategory := handlerClassAndCategory value.

			(SAXHandler selectorsInCategory: handlerCategory) do: [:each |
				handlerClass
					compile: (SAXHandler sourceCodeAt: each)
					classified: handlerCategory]]