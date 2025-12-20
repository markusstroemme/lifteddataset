@global_var_90a90 = external constant [4 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32
@global_var_c3080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_53d9c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i128, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i128 0, ptr %stack_var_-48, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_90a90, ptr nonnull %stack_var_-48)
  %3 = load i128, ptr %stack_var_-48, align 8
  %4 = trunc i128 %3 to i64
  %5 = mul i64 %4, %4
  call void @printLongLongLine(i64 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_53e21, label %dec_label_pc_53e1c

dec_label_pc_53e1c:                               ; preds = %dec_label_pc_53d9c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_53e21

dec_label_pc_53e21:                               ; preds = %dec_label_pc_53e1c, %dec_label_pc_53d9c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

