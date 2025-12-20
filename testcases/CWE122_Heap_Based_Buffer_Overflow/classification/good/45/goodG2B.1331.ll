@CWE122_Heap_Based_Buffer_Overflow__sizeof_int64_t_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_34bd9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9820:
  %0 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_int64_t_45_goodG2BData, align 8
  %1 = ptrtoint ptr %0 to i64
  call void @printLongLongLine(i64 %1)
  call void @free(ptr %0)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_9855:
  %0 = call ptr @malloc(i32 8)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_9888, label %dec_label_pc_987e

dec_label_pc_987e:                                ; preds = %dec_label_pc_9855
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9888:                                ; preds = %dec_label_pc_9855
  %3 = ptrtoint ptr %0 to i64
  store i64 2147483643, ptr %0, align 8
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_int64_t_45_goodG2BData, align 8
  call void @anon0()
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_2b997:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_34bd9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

