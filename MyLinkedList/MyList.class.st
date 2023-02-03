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
MyList >> addFirst: value [
" add value at the beginning of the list"
	size := size + 1.
	value newNode: node.
	node := value
]

{ #category : #testing }
MyList >> get: index [

	"get the indexth element from the List or error if the element dasen't exsite or index greater than the list size"

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

	"return true if the List is empty false otherwise "

	node ifNil: [ ^ true ].
	node ifNotNil: [ ^ false ]
]

{ #category : #accessing }
MyList >> node [
 ^node
]

{ #category : #removing }
MyList >> remove [
"remove the one element from the beginin of the list if the list is not empty and return the removed element otherwise an signal will be thrown"
	| res |
	node ifNil: [ ^ Error new signal: 'Empty List' ].
	node ifNotNil: [ 
		res := node.
		node := node next.
		size := size - 1.

		^ res ]
]

{ #category : #accessing }
MyList >> removeAt: index [
"remove the indexth element and return it  if the element exist otherwise a signal will be thrown "
	| pos tmp res |
	res := node.
	pos := 0.
	index - 1 >= size ifTrue: [ 
		^ Error new signal: 'index out off BoundException' ].
	[ index - 1 >= pos ] whileTrue: [ 
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

	"return the list size"

	^ size
]
