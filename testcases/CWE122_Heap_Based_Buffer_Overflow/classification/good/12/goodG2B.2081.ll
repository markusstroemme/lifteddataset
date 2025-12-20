@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_15228:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_15284, label %dec_label_pc_1525f

dec_label_pc_1525f:                               ; preds = %dec_label_pc_15228
  br i1 %5, label %dec_label_pc_152a9, label %dec_label_pc_1527a

dec_label_pc_1527a:                               ; preds = %dec_label_pc_1525f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15284:                               ; preds = %dec_label_pc_15228
  br i1 %5, label %dec_label_pc_152a9, label %dec_label_pc_1529f

dec_label_pc_1529f:                               ; preds = %dec_label_pc_15284
  call void @exit(i32 -1)
  unreachable

dec_label_pc_152a9:                               ; preds = %dec_label_pc_15284, %dec_label_pc_1525f
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %8 = load i64, ptr %3, align 8
  call void @printLongLongLine(i64 %8)
  call void @free(ptr %3)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_15314, label %dec_label_pc_1530f

dec_label_pc_1530f:                               ; preds = %dec_label_pc_152a9
  call void @__stack_chk_fail()
  br label %dec_label_pc_15314

dec_label_pc_15314:                               ; preds = %dec_label_pc_1530f, %dec_label_pc_152a9
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_65cd4:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

