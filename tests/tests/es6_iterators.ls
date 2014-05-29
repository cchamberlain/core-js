test 'String::@@iterator' !->
  ok typeof String::[Symbol.iterator] is \function, 'Is function'
  iter = 'qwe'[Symbol.iterator]!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: \q, done: no}
  deepEqual iter.next!, {value: \w, done: no}
  deepEqual iter.next!, {value: \e, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Array::keys' !->
  ok typeof Array::keys is \function, 'Is function'
  iter = <[q w e]>keys!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: 0, done: no}
  deepEqual iter.next!, {value: 1, done: no}
  deepEqual iter.next!, {value: 2, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Array::values' !->
  ok typeof Array::values is \function, 'Is function'
  iter = <[q w e]>values!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: \q, done: no}
  deepEqual iter.next!, {value: \w, done: no}
  deepEqual iter.next!, {value: \e, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Array::entries' !->
  ok typeof Array::entries is \function, 'Is function'
  iter = <[q w e]>entries!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: [0 \q], done: no}
  deepEqual iter.next!, {value: [1 \w], done: no}
  deepEqual iter.next!, {value: [2 \e], done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Array::@@iterator' !->
  ok typeof Array::[Symbol.iterator] is \function, 'Is function'
  iter = <[q w e]>[Symbol.iterator]!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: \q, done: no}
  deepEqual iter.next!, {value: \w, done: no}
  deepEqual iter.next!, {value: \e, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Map::keys' !->
  ok typeof Map::keys is \function, 'Is function'
  iter = new Map([[\a \q],[\s \w],[\d \e]])keys!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: \a, done: no}
  deepEqual iter.next!, {value: \s, done: no}
  deepEqual iter.next!, {value: \d, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Map::values' !->
  ok typeof Map::values is \function, 'Is function'
  iter = new Map([[\a \q],[\s \w],[\d \e]])values!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: \q, done: no}
  deepEqual iter.next!, {value: \w, done: no}
  deepEqual iter.next!, {value: \e, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Map::entries' !->
  ok typeof Map::entries is \function, 'Is function'
  iter = new Map([[\a \q],[\s \w],[\d \e]])entries!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: [\a \q], done: no}
  deepEqual iter.next!, {value: [\s \w], done: no}
  deepEqual iter.next!, {value: [\d \e], done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Map::@@iterator' !->
  ok typeof Map::[Symbol.iterator] is \function, 'Is function'
  iter = new Map([[\a \q],[\s \w],[\d \e]])[Symbol.iterator]!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: [\a \q], done: no}
  deepEqual iter.next!, {value: [\s \w], done: no}
  deepEqual iter.next!, {value: [\d \e], done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Set::keys' !->
  ok typeof Set::keys is \function, 'Is function'
  iter = new Set(<[q w e]>)keys!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: \q, done: no}
  deepEqual iter.next!, {value: \w, done: no}
  deepEqual iter.next!, {value: \e, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Set::values' !->
  ok typeof Set::values is \function, 'Is function'
  iter = new Set(<[q w e]>)values!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: \q, done: no}
  deepEqual iter.next!, {value: \w, done: no}
  deepEqual iter.next!, {value: \e, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Set::entries' !->
  ok typeof Set::entries is \function, 'Is function'
  iter = new Set(<[q w e]>)entries!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: [\q \q], done: no}
  deepEqual iter.next!, {value: [\w \w], done: no}
  deepEqual iter.next!, {value: [\e \e], done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'Set::@@iterator' !->
  ok typeof Set::[Symbol.iterator] is \function, 'Is function'
  iter = new Set(<[q w e]>)[Symbol.iterator]!
  ok typeof iter is \object, 'Iterator is object'
  ok typeof iter.next is \function, 'Iterator has .next method'
  deepEqual iter.next!, {value: \q, done: no}
  deepEqual iter.next!, {value: \w, done: no}
  deepEqual iter.next!, {value: \e, done: no}
  deepEqual iter.next!, {value: void, done: on}
test 'C.forOf' !->
  {for-of} = C
  ok typeof for-of is \function, 'Is function'
  set = new Set [1 2 3 2 1]
  counter1 = 0
  string1  = ''
  # get iterator from iterable object
  for-of set, !->
    counter1++
    string1 += it
  ok counter1 is 3
  ok string1 is \123
  counter2 = 0
  string2  = ''
  # use iterator
  for-of set.entries!, !->
    counter2++
    string2 += '' + it[0] + it[1]
  ok counter2 is 3
  ok string2 is \112233
  # additional args
  for-of [1]entries!, (key, val)->
    ok @ is o
    ok key is 0
    ok val is 1
  , o = {}, on
test 'C.isIterable' !->
  {isIterable} = C
  ok typeof isIterable is \function, 'Is function'
test 'C.getIterator' !->
  {getIterator} = C
  ok typeof getIterator is \function, 'Is function'