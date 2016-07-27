The class represents an attribute node, to be stored in an XMLAttributeList. You should seldom need to interact with these objects directly; XMLElement's various #attribute- messages will usually suffice.

The name of an XMLAttribute can be namespaced using prefixes; however, the prefix must be mapped to a namespace in the parent XMLElement.