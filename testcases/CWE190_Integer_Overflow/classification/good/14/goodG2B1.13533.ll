@global_var_87898 = external constant [21 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4e030:
  %stack_var_-16.02.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_b8074, align 4
  %1 = icmp eq i32 %0, 5
  store i32 2, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %1, label %dec_label_pc_4e071, label %dec_label_pc_4e066

dec_label_pc_4e066:                               ; preds = %dec_label_pc_4e030
  call void @printLine(ptr @global_var_87898)
  %.pre = load i32, ptr @global_var_b8074, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  store i32 0, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %phitmp1, label %dec_label_pc_4e084, label %dec_label_pc_4e071

dec_label_pc_4e071:                               ; preds = %dec_label_pc_4e030, %dec_label_pc_4e066
  %stack_var_-16.02.reload = load i32, ptr %stack_var_-16.02.reg2mem, align 4
  %2 = mul nuw nsw i32 %stack_var_-16.02.reload, %stack_var_-16.02.reload
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_4e084

dec_label_pc_4e084:                               ; preds = %dec_label_pc_4e071, %dec_label_pc_4e066
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

