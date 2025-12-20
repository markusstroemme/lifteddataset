@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5a53a:
  %stack_var_-472 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-472 to ptr
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_5a598, label %dec_label_pc_5a593

dec_label_pc_5a593:                               ; preds = %dec_label_pc_5a53a
  call void @__stack_chk_fail()
  br label %dec_label_pc_5a598

dec_label_pc_5a598:                               ; preds = %dec_label_pc_5a593, %dec_label_pc_5a53a
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_5a60f:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @memcpy(ptr %6, ptr nonnull %stack_var_-424, i32 400)
  %8 = inttoptr i64 %4 to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_5a6a0, label %dec_label_pc_5a69b

dec_label_pc_5a69b:                               ; preds = %dec_label_pc_5a60f
  call void @__stack_chk_fail()
  br label %dec_label_pc_5a6a0

dec_label_pc_5a6a0:                               ; preds = %dec_label_pc_5a69b, %dec_label_pc_5a60f
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

