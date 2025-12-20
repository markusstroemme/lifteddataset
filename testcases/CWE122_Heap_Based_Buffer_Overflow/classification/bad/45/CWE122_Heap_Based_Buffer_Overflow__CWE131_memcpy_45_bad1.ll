@CWE122_Heap_Based_Buffer_Overflow__CWE131_memcpy_45_badData = external local_unnamed_addr global ptr
@global_var_44d70 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_f49b:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE131_memcpy_45_badData, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %2 = bitcast ptr %1 to ptr
  %3 = call ptr @memcpy(ptr %2, ptr nonnull %stack_var_-56, i32 40)
  %4 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE131_memcpy_45_badData, align 8
  call void @printIntLine(i32 %4)
  call void @free(ptr %2)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_f52f, label %dec_label_pc_f52a

dec_label_pc_f52a:                                ; preds = %dec_label_pc_f49b
  call void @__stack_chk_fail()
  br label %dec_label_pc_f52f

dec_label_pc_f52f:                                ; preds = %dec_label_pc_f52a, %dec_label_pc_f49b
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_f531:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_f564, label %dec_label_pc_f55a

dec_label_pc_f55a:                                ; preds = %dec_label_pc_f531
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f564:                                ; preds = %dec_label_pc_f531
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE131_memcpy_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

