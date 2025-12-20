@global_var_695c0 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1e30d:
  %stack_var_-16.02.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_9c034, align 4
  %1 = icmp eq i32 %0, 5
  store i32 3, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %1, label %dec_label_pc_1e34e, label %dec_label_pc_1e343

dec_label_pc_1e343:                               ; preds = %dec_label_pc_1e30d
  call void @printLine(ptr @global_var_695c0)
  %.pre = load i32, ptr @global_var_9c034, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  store i32 1, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %phitmp1, label %dec_label_pc_1e361, label %dec_label_pc_1e34e

dec_label_pc_1e34e:                               ; preds = %dec_label_pc_1e30d, %dec_label_pc_1e343
  %stack_var_-16.02.reload = load i32, ptr %stack_var_-16.02.reg2mem, align 4
  call void @printUnsignedLine(i32 %stack_var_-16.02.reload)
  br label %dec_label_pc_1e361

dec_label_pc_1e361:                               ; preds = %dec_label_pc_1e34e, %dec_label_pc_1e343
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

