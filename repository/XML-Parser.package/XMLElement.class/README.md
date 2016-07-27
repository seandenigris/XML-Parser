The class represents an XML element node. It can have a name, attributes, associated namespace information and any number child nodes/elements.

The #attribute- messages provide a Dictionary-like prototcol for manipulating attributes. The underlying XMLAttributeList can be accessed using #attributeNodes, and an order-preserving dictionary of attribute names/values can be obtained using #attributes.

Namespaces can be declared using #declareNamespace:uri: or simultaniously with changing the element's name or prefix using #name:namespaceURI: or #prefix:uri:. The default namespace can be accessed through #defaultNamespace and #defaultNamespace:.

Character data can be obtained using #contentString, which returns content of the first XMLString node, or through #contents, which returns all child XMLString nodes.