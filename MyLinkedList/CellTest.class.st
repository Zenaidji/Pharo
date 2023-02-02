Class {
	#name : #CellTest,
	#superclass : #TestCase,
	#category : #MyLinkedList
}

{ #category : #'instance creation' }
CellTest >> testNewData [

	| node |
	node := Cell new.
	node newData: 1.
	self assert: node data equals: 1.
	node newData: 2.
	self assert: node data equals: 2
]

{ #category : #tests }
CellTest >> testNewNode [

	| node1 node2 |
	node1 := Cell new.
	node2 := Cell new.
	node1 newNode: node2.
	self assert: node1 next equals: node2
]
