import '../api/lua_type.dart';
import '../binchunk/binary_chunk.dart';
import 'upvalue_holder.dart';

class Closure {
  final Prototype? proto;
  final DartFunction? dartFunc;
  final DartAsyncFunction? dartAsyncFunc;
  final List<UpvalueHolder?> upvals;

  Closure(Prototype this.proto)
      : this.dartFunc = null,
        this.dartAsyncFunc = null,
        this.upvals = List<UpvalueHolder?>.filled(proto.upvalues.length, null);

  Closure.DartFunc(this.dartFunc, int nUpvals)
      : this.proto = null,
        this.dartAsyncFunc = null,
        this.upvals = List<UpvalueHolder?>.filled(nUpvals, null);

  Closure.DartAsyncFunc(this.dartAsyncFunc, int nUpvals)
      : this.proto = null,
        this.dartFunc = null,
        this.upvals = List<UpvalueHolder?>.filled(nUpvals, null);
}
