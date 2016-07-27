catalog
catalogChangeLog

^ '

- Version 1.3 - 2013-11-22 Monty''s Enhancements
These updates add validation against internal and external DTDs, proper replacement of general and parameter entites, customizable resolution of external parsed entities using Zinc and FileSystem, awareness of notations and unparsed entities, preservation of the internal DTD subset by the DOM parser (so printing a parsed doc with a DTD will produce approximately what was input), line numbers reporting in error messages, and better well-formed and validity constraints.

I had to largely rewrite the tokenizer to make everything work, but I followed the spec closely, and it is about the same speed as long as there is no DTD to validate against.

[[[ 
	(ConfigurationOfXMLParser project version: ''1.3'') load
]]]


- Version 1.2- 2013-04-30 Removing dependency on XMLWriter.

[[[ 
	(ConfigurationOfXMLParser project version: ''1.2'') load
]]]


'