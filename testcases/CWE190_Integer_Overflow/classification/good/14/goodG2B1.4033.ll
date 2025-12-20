@global_var_835bc = external constant [21 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_17db4:
  %stack_var_-24.02.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_bc0a4, align 4
  %1 = icmp eq i32 %0, 5
  store i64 3, ptr %stack_var_-24.02.reg2mem, align 8
  br i1 %1, label %dec_label_pc_17df7, label %dec_label_pc_17dec

dec_label_pc_17dec:                               ; preds = %dec_label_pc_17db4
  call void @printLine(ptr @global_var_835bc)
  %.pre = load i32, ptr @global_var_bc0a4, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  store i64 1, ptr %stack_var_-24.02.reg2mem, align 8
  br i1 %phitmp1, label %dec_label_pc_17e10, label %dec_label_pc_17df7

dec_label_pc_17df7:                               ; preds = %dec_label_pc_17db4, %dec_label_pc_17dec
  %stack_var_-24.02.reload = load i64, ptr %stack_var_-24.02.reg2mem, align 8
  call void @printLongLongLine(i64 %stack_var_-24.02.reload)
  br label %dec_label_pc_17e10

dec_label_pc_17e10:                               ; preds = %dec_label_pc_17df7, %dec_label_pc_17dec
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

