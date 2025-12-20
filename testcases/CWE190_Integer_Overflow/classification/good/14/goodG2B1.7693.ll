@global_var_8538a = external constant [21 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2a6ab:
  %stack_var_-16.02.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_bc0a4, align 4
  %1 = icmp eq i32 %0, 5
  store i32 3, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %1, label %dec_label_pc_2a6ec, label %dec_label_pc_2a6e1

dec_label_pc_2a6e1:                               ; preds = %dec_label_pc_2a6ab
  call void @printLine(ptr @global_var_8538a)
  %.pre = load i32, ptr @global_var_bc0a4, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  store i32 1, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %phitmp1, label %dec_label_pc_2a700, label %dec_label_pc_2a6ec

dec_label_pc_2a6ec:                               ; preds = %dec_label_pc_2a6ab, %dec_label_pc_2a6e1
  %stack_var_-16.02.reload = load i32, ptr %stack_var_-16.02.reg2mem, align 4
  call void @printIntLine(i32 %stack_var_-16.02.reload)
  br label %dec_label_pc_2a700

dec_label_pc_2a700:                               ; preds = %dec_label_pc_2a6ec, %dec_label_pc_2a6e1
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

