@CWE122_Heap_Based_Buffer_Overflow__sizeof_int64_t_22_goodG2B2Global = external local_unnamed_addr global i32
@global_var_34bd9 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_8fa5:
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_int64_t_22_goodG2B2Global, align 4
  %0 = call ptr @anon0(ptr null)
  %1 = load i64, ptr %0, align 8
  call void @printLongLongLine(i64 %1)
  call void @free(ptr %0)
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_90b5:
  %stack_var_-16.0.in.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_int64_t_22_goodG2B2Global, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.in.reg2mem, align 8
  br i1 %1, label %dec_label_pc_90f9, label %dec_label_pc_90cf

dec_label_pc_90cf:                                ; preds = %dec_label_pc_90b5
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_90ee, label %dec_label_pc_90e4

dec_label_pc_90e4:                                ; preds = %dec_label_pc_90cf
  call void @exit(i32 -1)
  unreachable

dec_label_pc_90ee:                                ; preds = %dec_label_pc_90cf
  store i64 2147483643, ptr %2, align 8
  store ptr %2, ptr %stack_var_-16.0.in.reg2mem, align 8
  br label %dec_label_pc_90f9

dec_label_pc_90f9:                                ; preds = %dec_label_pc_90ee, %dec_label_pc_90b5
  %stack_var_-16.0.in.reload = load ptr, ptr %stack_var_-16.0.in.reg2mem, align 8
  ret ptr %stack_var_-16.0.in.reload
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

