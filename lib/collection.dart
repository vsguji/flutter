import 'dart:collection';

class collection {
  // 1.  key 存储有序集合
  //abstract class  LinkedHashMap<K,V> implements Map<K,V> {}

//var map = LinkedHashMap<int, int>(
  // equals: (int a, int b) => (b - a) % 5 == 0, hashCode: (int e) => e % 5);

// 2.来自别的部分的map,组合为key有序map
// 要求Keys全部为[K]实例,Values全部为[V]实例
  // factory LinkedHashMap.from(Map<dynamic, dynamic> other) {
  //   LinkedHashMap<K, V> result = LinkedHashMap<K, V>();
  //   other.forEach((dynamic k, dynamic v) {
  //     result[k as K] = v as V;
  //   });
  //   return result;
  // }

// 3.包含其他全部Keys,创建有序Map
//  factory LinkedHashMap.of(<Map<K,V> other) => LinkedHashMap<K,V>()..addAll(other);

// 4.利用迭代,创建有序map
//  factory LinkedHashMap.fromIterable(Iterable iterable,{K Function(dynamic element)? key,V function(dynamic element)? value}){
//    LinkedHashMap<K,V> map = LinkedHashMap<K,V>();
//    MapBase._fillMapWithMappedIterable(map,iterable,key,value);
//    return map;
//  }

// 5. 利用迭代,给keys，赋于对应的values
  // factory LinkedHashMap.fromIterables(Iterable<K> keys, Iterable<V> values) {
  //   LinkedHashMap<K, V> map = LinkedHashMap<K, V>();
  //   MapBase._fillMapWithIterables(map, keys, values);
  //   return map;
  // }

  // 6.entries（条目）迭代,组合为有序map,2.1版本可用
  // factory LinkedHashMap.fromEntries(Iterable<MapEntry<K, V>> entries) =>
  //     LinkedHashMap<K, V>()..addEntries(entries);

  // 7.linked_list.dart 线性列表操作
  //class LinkedList<E extends LinkedListEntry<E>> extends Iterable <E> {}

  // 8.maps.dart 字典操作
  // 8.1 abstract class MapBase<K,V> extends MapMiXin<K,V> {}
  // 包含基本五项操作,而这五项基本操作是通过Mixin方式实现
  // keys
  // operator[]
  // operator[]=
  // remove
  // clear
  // 8.2 不可修改字段操作
//  abstract class UnmodifiableMapBase<K,V> = MapBase<K,V> with _UnmodifiableMapXin<K,V>
// 8.3 values 迭代操作
// class _MapBaseValueIterable<K,V> extends EfficientLenghtIterable<V> {}
// 8.4 类操作包装器,实现Map操作
// class MapView<K,V> implements Map<K,V> {}

// 9.queues.dart 队列操作,
// 1.当队列正在执行时,不允许修改队列
// 2.可以通过forEach或itera遍历元素
// abstract class Queue<E> implements EfficientLengthIterable<E> {}
// 基础列表队列操作,对于队列、堆栈均使用
//  class ListQueue<E> extends ListIterable<E> implements Queue<E>{}
// 列表队列迭代器 用于并行添加、删除、修改
// class _ListQueueIterator<E> implements Iterator<E>{}

  // 10.Set.dart 以及基础操作,适用于可修改、不可修改
//  abstract class SetMixin<E> implements Set<E>{}
// add
// contains
// lookup
// remove
// iterator
// length
// toSet
// retainAll
// union
// interSection
// difference
// 集合基本类
// abstract class SetBase<E> extends Object with SetMixin<E> {}

// 11.splay_tree.dart 
// 基于集合的树结构
// class _SplayTreeSetNode<K> extends _SplayTreeNode<K,_SplayTreeSetNode<K>> {}
// 基于字典的树结构
// class _SplayTreeMapNode<K,V> extends _SplayTreeNode<K,_SplayTreeMapNode<K,V>>{}

// 平衡二叉树
// abstract class _SplayTree<K,Nod extends _SplayTreeNode<K,Node>> {}

// 一种可以相对排序的对象的映射
// class SplayTreeMap<K,V> extends _SplayTree<K,_SplayTreeMapNode<K,V>> with MapMiXin<K,V>{}
// 一种可以相对排列的对象
// class SplayTreeSet<E> extends _SplayTree<E,_SplayTreeSetNode<E>> with IterableMixin<E>,SetMiXin<E> {}

}
