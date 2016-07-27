The class represents an XML element node. It can have a name, attributes, associated namespace declarations and any number child nodes and elements.

The #attribute- messages provide a Dictionary-like prototcol for manipulating attribute nodes. The underlying XMLAttributeList can be accessed using #attributeNodes, and an order-preserving dictionary of attribute names/values can be obtained using #attributes. Namespaces can be declared using #declareNamespace:uri: or simultaniously with changing the element's name using #name:namespaceURI:. The default namespace can be accessed through #defaultNamespace and #defaultNamespace:.

See the comment for the superclass for how to access child nodes and elements.