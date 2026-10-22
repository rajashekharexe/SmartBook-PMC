package com.googlecode.mp4parser.util;

import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public class RangeStartMap<K extends Comparable, V> implements Map<K, V> {
    TreeMap<K, V> base = new TreeMap<>(new Comparator<K>() { // from class: com.googlecode.mp4parser.util.RangeStartMap.1
        @Override // java.util.Comparator
        public int compare(K k, K k2) {
            return -k.compareTo(k2);
        }
    });

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((RangeStartMap<K, V>) obj, (Comparable) obj2);
    }

    public RangeStartMap() {
    }

    public RangeStartMap(K k, V v) {
        put((RangeStartMap<K, V>) k, (K) v);
    }

    @Override // java.util.Map
    public int size() {
        return this.base.size();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.base.isEmpty();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.base.get(obj) != null;
    }

    @Override // java.util.Map
    public V get(Object obj) {
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Comparable comparable = (Comparable) obj;
        if (isEmpty()) {
            return null;
        }
        Iterator<K> it = this.base.keySet().iterator();
        K next = it.next();
        while (true) {
            K k = next;
            if (it.hasNext()) {
                if (comparable.compareTo(k) < 0) {
                    next = it.next();
                } else {
                    return this.base.get(k);
                }
            } else {
                return this.base.get(k);
            }
        }
    }

    public V put(K k, V v) {
        return this.base.put(k, v);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Comparable comparable = (Comparable) obj;
        if (isEmpty()) {
            return null;
        }
        Iterator<K> it = this.base.keySet().iterator();
        K next = it.next();
        while (true) {
            K k = next;
            if (it.hasNext()) {
                if (comparable.compareTo(k) < 0) {
                    next = it.next();
                } else {
                    return this.base.remove(k);
                }
            } else {
                return this.base.remove(k);
            }
        }
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        this.base.putAll(map);
    }

    @Override // java.util.Map
    public void clear() {
        this.base.clear();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return this.base.keySet();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return this.base.values();
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return this.base.entrySet();
    }
}
