Class {
	#name : #MyList,
	#superclass : #Object,
	#instVars : [
		'node',
		'size'
	],
	#category : #MyLinkedList
}

{ #category : #adding }
MyList >> addFirst:value [
size:=size+1.
value newNode:node.
node:=value. 
]

{ #category : #testing }
MyList >> get: index [

	| pos tmp |
	pos := 0.
	tmp := node.
	self isEmpty ifTrue: [ ^ Error new signal: 'EmptyList' ].
	index >= size ifTrue: [ 
		^ Error new signal: 'index out off BoundException' ].
	[ pos < index ] whileTrue: [ 
		pos := pos + 1.
		tmp := tmp next ].
	^ tmp
]

{ #category : #testing }
MyList >> hasNext [
	node next ifNil: [ ^ false ].
	node next ifNotNil: [ ^ true ]
]

{ #category : #initialization }
MyList >> initialize [
	super initialize.
	size := 0
]

{ #category : #testing }
MyList >> isEmpty [
	 node ifNil:[^true].
	 node ifNotNil:[^false]. 
	
]

{ #category : #accessing }
MyList >> node [
 ^node
]

{ #category : #removing }
MyList >> remove [
		|res|
	node ifNil: [ ^ Error new signal: 'Empty List' ].
	node ifNotNil: [ 
		res:=node.
		node := node next.
		size := size - 1.
		
		^ res ]
]

{ #category : #accessing }
MyList >> removeAt: index [

	| pos tmp res |
	res := node.
	pos := 0.
	index - 1 >= size ifTrue: [ 
		^ Error new signal: 'index out off BoundException' ].
	[ index-1>=pos ] whileTrue: [ 
		pos := pos + 1.
		node := node next ].
	tmp := node next.
	node newNode: tmp next.
	size := size - 1.
	node := res.
	^ tmp
]

{ #category : #accessing }
MyList >> size [
^size
]
