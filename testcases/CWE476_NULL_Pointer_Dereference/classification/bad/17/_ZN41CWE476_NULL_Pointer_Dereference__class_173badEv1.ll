@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22fc9:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i32, align 4
  %stack_var_-16.0.reg2mem = alloca i64, align 8
  store i32 0, ptr %storemerge2.reg2mem, align 4
  br label %dec_label_pc_22fea

dec_label_pc_22fea:                               ; preds = %dec_label_pc_22fea, %dec_label_pc_22fc9
  %storemerge2.reload = load i32, ptr %storemerge2.reg2mem, align 4
  %stack_var_-16.0.reload = load i64, ptr %stack_var_-16.0.reg2mem, align 8
  %0 = add nuw nsw i32 %storemerge2.reload, 1
  %exitcond = icmp eq i32 %0, 2
  store i64 0, ptr %stack_var_-16.0.reg2mem, align 8
  store i32 %0, ptr %storemerge2.reg2mem, align 4
  br i1 %exitcond, label %dec_label_pc_22ff9, label %dec_label_pc_22fea

dec_label_pc_22ff9:                               ; preds = %dec_label_pc_22fea
  %1 = inttoptr i64 %stack_var_-16.0.reload to ptr
  %2 = icmp eq i64 %stack_var_-16.0.reload, 0
  %3 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %3)
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_23026, label %dec_label_pc_2300f

dec_label_pc_2300f:                               ; preds = %dec_label_pc_22ff9
  %4 = inttoptr i64 %stack_var_-16.0.reload to ptr
  %5 = call i64 @_ZdlPvm(ptr %4, i64 8)
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23026

dec_label_pc_23026:                               ; preds = %dec_label_pc_22ff9, %dec_label_pc_2300f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

