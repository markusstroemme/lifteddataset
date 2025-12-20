@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_57206:
  %stack_var_-424 = alloca i64, align 8
  %dataGoodBuffer_-832 = alloca [100 x i32], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [100 x i32] undef, i32 %2, 0
  store [100 x i32] %3, ptr %dataGoodBuffer_-832, align 8
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  %5 = bitcast ptr %dataGoodBuffer_-832 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = inttoptr i64 %6 to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-424, i32 400)
  %9 = inttoptr i64 %6 to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_5728c, label %dec_label_pc_57287

dec_label_pc_57287:                               ; preds = %dec_label_pc_57206
  call void @__stack_chk_fail()
  br label %dec_label_pc_5728c

dec_label_pc_5728c:                               ; preds = %dec_label_pc_57287, %dec_label_pc_57206
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

