@global_var_8336c = external constant [21 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc02c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1692e:
  %stack_var_-24.02.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_bc02c, align 4
  %1 = icmp eq i32 %0, 5
  store i64 3, ptr %stack_var_-24.02.reg2mem, align 8
  br i1 %1, label %dec_label_pc_16971, label %dec_label_pc_16966

dec_label_pc_16966:                               ; preds = %dec_label_pc_1692e
  call void @printLine(ptr @global_var_8336c)
  %.pre = load i32, ptr @global_var_bc02c, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  store i64 1, ptr %stack_var_-24.02.reg2mem, align 8
  br i1 %phitmp1, label %dec_label_pc_1698a, label %dec_label_pc_16971

dec_label_pc_16971:                               ; preds = %dec_label_pc_1692e, %dec_label_pc_16966
  %stack_var_-24.02.reload = load i64, ptr %stack_var_-24.02.reg2mem, align 8
  call void @printLongLongLine(i64 %stack_var_-24.02.reload)
  br label %dec_label_pc_1698a

dec_label_pc_1698a:                               ; preds = %dec_label_pc_16971, %dec_label_pc_16966
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

