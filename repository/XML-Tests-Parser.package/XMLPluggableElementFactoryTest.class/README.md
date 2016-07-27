This class tests the pluggable element factory. To do this it creates a number of dummy subclasses of XMLElement in its #setUp message that should be removed from the system by its #tearDown message. Since these classes only exist during testing, special accessor messages are used to reference them. These accessors are also generated automatically, whenever you send the class #createDummyElementAccessors. The names for the classes and accessors are taken from the class-side #dummyElementNames message and some supporting messages that specify a prefix and suffix (so the created classes don't collide with other, possibly pre-existing classes in the sytem).

Browse the class side for more information.