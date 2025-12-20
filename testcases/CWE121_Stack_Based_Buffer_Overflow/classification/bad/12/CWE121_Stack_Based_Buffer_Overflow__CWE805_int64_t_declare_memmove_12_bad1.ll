@global_var_bb9b5 = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_33f82:
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %dataBadBuffer_-2032 = alloca [50 x i64], align 8
  %stack_var_-2024 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = ptrtoint ptr %stack_var_-1624 to i64
  %4 = insertvalue [50 x i64] undef, i64 %3, 0
  %5 = ptrtoint ptr %stack_var_-2024 to i64
  %6 = insertvalue [50 x i64] undef, i64 %5, 0
  %storemerge = select i1 %2, [50 x i64] %4, [50 x i64] %6
  store [50 x i64] %storemerge, ptr %dataBadBuffer_-2032, align 8
  %7 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 100)
  %8 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-2032, i64 0, i64 0
  %9 = load i64, ptr %8, align 8
  %10 = inttoptr i64 %9 to ptr
  %11 = call ptr @memmove(ptr %10, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %12 = load i64, ptr %10, align 8
  call void @printLongLongLine(i64 %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_34028, label %dec_label_pc_34023

dec_label_pc_34023:                               ; preds = %dec_label_pc_33f82
  call void @__stack_chk_fail()
  br label %dec_label_pc_34028

dec_label_pc_34028:                               ; preds = %dec_label_pc_34023, %dec_label_pc_33f82
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_9d049:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

