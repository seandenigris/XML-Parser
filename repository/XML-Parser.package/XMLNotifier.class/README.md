This class implements the observer pattern.

Classes using it need to forward its entire protocol to a private instance. Objects will then be able to register themselves as observers of it and receive notifications from it, which are selectors that the observers are expected to implement, typically under the category "notifications."

It stores observers in an Array grown and shrunk with #copyWith: and #copyWithout: rather than an OrderedCollection for better memory usage and faster performance (because each node only has at most two observers).