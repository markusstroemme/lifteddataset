@global_var_bb9b5 = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_33a46:
  %stack_var_-824 = alloca i64, align 8
  %dataGoodBuffer_-1632 = alloca [100 x i64], align 8
  %stack_var_-1624 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-1624 to i64
  %2 = insertvalue [100 x i64] undef, i64 %1, 0
  store [100 x i64] %2, ptr %dataGoodBuffer_-1632, align 8
  %3 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 100)
  %4 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1632, i64 0, i64 0
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memmove(ptr %6, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %8 = load i64, ptr %6, align 8
  call void @printLongLongLine(i64 %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_33ae9, label %dec_label_pc_33ae4

dec_label_pc_33ae4:                               ; preds = %dec_label_pc_33a46
  call void @__stack_chk_fail()
  br label %dec_label_pc_33ae9

dec_label_pc_33ae9:                               ; preds = %dec_label_pc_33ae4, %dec_label_pc_33a46
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

