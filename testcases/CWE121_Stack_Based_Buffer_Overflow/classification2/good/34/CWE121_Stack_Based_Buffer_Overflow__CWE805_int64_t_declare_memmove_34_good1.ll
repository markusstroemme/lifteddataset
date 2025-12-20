@global_var_bb9b5 = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_34e0a:
  %stack_var_-824 = alloca i64, align 8
  %dataGoodBuffer_-1632 = alloca [100 x i64], align 8
  %dataGoodBuffer_-1640 = alloca [100 x i64], align 8
  %stack_var_-1624 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-1624 to i64
  %2 = insertvalue [100 x i64] undef, i64 %1, 0
  store [100 x i64] %2, ptr %dataGoodBuffer_-1640, align 8
  %3 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1640, i64 0, i64 0
  %4 = load i64, ptr %3, align 8
  %5 = insertvalue [100 x i64] undef, i64 %4, 0
  store [100 x i64] %5, ptr %dataGoodBuffer_-1632, align 8
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1632, i64 0, i64 0
  %8 = load i64, ptr %7, align 8
  %9 = inttoptr i64 %8 to ptr
  %10 = call ptr @memmove(ptr %9, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %11 = load i64, ptr %9, align 8
  call void @printLongLongLine(i64 %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_34eae, label %dec_label_pc_34ea9

dec_label_pc_34ea9:                               ; preds = %dec_label_pc_34e0a
  call void @__stack_chk_fail()
  br label %dec_label_pc_34eae

dec_label_pc_34eae:                               ; preds = %dec_label_pc_34ea9, %dec_label_pc_34e0a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

