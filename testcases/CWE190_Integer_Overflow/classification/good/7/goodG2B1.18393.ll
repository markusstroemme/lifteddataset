@global_var_8ac7b = external constant [21 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc08c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5d5eb:
  %stack_var_-16.02.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_bc08c, align 4
  %1 = icmp eq i32 %0, 5
  store i32 3, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %1, label %dec_label_pc_5d62c, label %dec_label_pc_5d621

dec_label_pc_5d621:                               ; preds = %dec_label_pc_5d5eb
  call void @printLine(ptr @global_var_8ac7b)
  %.pre = load i32, ptr @global_var_bc08c, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  store i32 1, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %phitmp1, label %dec_label_pc_5d640, label %dec_label_pc_5d62c

dec_label_pc_5d62c:                               ; preds = %dec_label_pc_5d5eb, %dec_label_pc_5d621
  %stack_var_-16.02.reload = load i32, ptr %stack_var_-16.02.reg2mem, align 4
  call void @printUnsignedLine(i32 %stack_var_-16.02.reload)
  br label %dec_label_pc_5d640

dec_label_pc_5d640:                               ; preds = %dec_label_pc_5d62c, %dec_label_pc_5d621
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

