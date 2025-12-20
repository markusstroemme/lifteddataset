@global_var_85a00 = external constant [21 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b804c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3c959:
  %stack_var_-16.02.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_b804c, align 4
  %1 = icmp eq i32 %0, 5
  store i32 2, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3c99a, label %dec_label_pc_3c98f

dec_label_pc_3c98f:                               ; preds = %dec_label_pc_3c959
  call void @printLine(ptr @global_var_85a00)
  %.pre = load i32, ptr @global_var_b804c, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  store i32 0, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %phitmp1, label %dec_label_pc_3c9ad, label %dec_label_pc_3c99a

dec_label_pc_3c99a:                               ; preds = %dec_label_pc_3c959, %dec_label_pc_3c98f
  %stack_var_-16.02.reload = load i32, ptr %stack_var_-16.02.reg2mem, align 4
  %2 = mul nuw nsw i32 %stack_var_-16.02.reload, %stack_var_-16.02.reload
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_3c9ad

dec_label_pc_3c9ad:                               ; preds = %dec_label_pc_3c99a, %dec_label_pc_3c98f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

