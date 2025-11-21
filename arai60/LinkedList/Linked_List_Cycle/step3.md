# 知識の補填
## Set
### なぜ Array より検索が速いのか
- Arrayの場合、先頭の要素から順番に検索（要素の数だけループ）
```
/*
 *  call-seq:
 *    include?(object) -> true or false
 *
 *  Returns whether for some element +element+ in +self+,
 *  <tt>object == element</tt>:
 *
 *    [0, 1, 2].include?(2)   # => true
 *    [0, 1, 2].include?(2.0) # => true
 *    [0, 1, 2].include?(2.1) # => false
 *
 *  Related: see {Methods for Querying}[rdoc-ref:Array@Methods+for+Querying].
 */

VALUE
rb_ary_includes(VALUE ary, VALUE item)
{
    long i;
    VALUE e;

    for (i=0; i<RARRAY_LEN(ary); i++) {
        e = RARRAY_AREF(ary, i);
        if (rb_equal(e, item)) {
            return Qtrue;
        }
    }
    return Qfalse;
}
```
- Setの場合、内部的にはハッシュで値を保持し、ハッシュ法で探索
- [ハッシュ探索法](https://www.momoyama-usagi.com/entry/info-algo-search#i-3)
```
  # Returns true if the set contains the given object.
  #
  # Note that <code>include?</code> and <code>member?</code> do not test member
  # equality using <code>==</code> as do other Enumerables.
  #
  # See also Enumerable#include?
  def include?(o)
    @hash[o]
  end
```