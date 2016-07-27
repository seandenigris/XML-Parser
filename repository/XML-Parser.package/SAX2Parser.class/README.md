This class is a parser with an API like SAX 2.0, with separate SAXContentHandler, SAXLexicalHandler, and SAXDeclarationHandler classes that are subclassed so their instances can be injected into a parser before parsing, unlike SAX 1.0 where a single handler class  is subclassed directly.

SAXHandler is not deprecated and should still be used if you prefer a SAX 1.0 style API.