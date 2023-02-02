Class {
	#name : #MyListTests,
	#superclass : #TestCase,
	#category : #MyLinkedList
}

{ #category : #tests }
MyListTests >> testAddFirst [

	| val node1  list |
	node1 := Cell new.
	node1 newData: 7.
	list := MyList new.
	self assert: list size equals: 0.
	list addFirst: node1.
	self assert: list size equals: 1.
	val := list get: 0.
	self assert: val equals: node1
]

{ #category : #tests }
MyListTests >> testGet [

	| node2 node1 list fst snd |
	node1 := Cell new.
	node2 := Cell new.
	list := MyList new.
	list addFirst: node1.
	list addFirst: node2.
	fst := list get: 0.
	snd := list get: 1.
	self assert: fst equals: node2.
	self assert: snd equals: node1.
]

{ #category : #tests }
MyListTests >> testHasNext [

	| node list|
	node := Cell new.
	list := MyList new.
	list addFirst: node.
	self assert: list hasNext equals: false
]

{ #category : #tests }
MyListTests >> testIsEmpty [
| node list |
	node := Cell new.
	list := MyList new.
	self assert: list isEmpty equals: true.
	list addFirst: node.
	self assert: list isEmpty equals: false.


]

{ #category : #'as yet unclassified' }
MyListTests >> testremove [
	| node2 node1 list |
	node1 := Cell new.
	node2 := Cell new.
	list := MyList new.
	self assert: list size equals: 0.
	list addFirst: node1.
	list addFirst: node2.
	self assert: list size equals: 2.
	self assert: list remove equals: node2.
	self assert: list remove equals: node1
]
