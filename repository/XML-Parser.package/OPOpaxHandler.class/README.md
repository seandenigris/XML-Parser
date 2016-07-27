The goal of Opax is to combine DOM and SAX such that:
- we get a tree of objects, like in a DOM
- but these are explicit objects and not strings.

This is achieved by transforming SAX events into objects based on the types of the XML tags.

The OpaxHandler is the key class that takes care of this transformation. Being a subclass of SAXHandler, it intercepts the SAX events and then instantiates either an OPGenericElement or a subclass based on matching the results of the xmlTags methods from the OPGenericElement hierarchy.