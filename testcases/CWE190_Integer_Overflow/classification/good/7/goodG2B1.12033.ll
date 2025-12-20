@global_var_8f572 = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c305c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_468d8:
  %stack_var_-16.02.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_c305c, align 4
  %1 = icmp eq i32 %0, 5
  store i32 2, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %1, label %dec_label_pc_46919, label %dec_label_pc_4690e

dec_label_pc_4690e:                               ; preds = %dec_label_pc_468d8
  call void @printLine(ptr @global_var_8f572)
  %.pre = load i32, ptr @global_var_c305c, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  store i32 0, ptr %stack_var_-16.02.reg2mem, align 4
  br i1 %phitmp1, label %dec_label_pc_4692c, label %dec_label_pc_46919

dec_label_pc_46919:                               ; preds = %dec_label_pc_468d8, %dec_label_pc_4690e
  %stack_var_-16.02.reload = load i32, ptr %stack_var_-16.02.reg2mem, align 4
  %2 = mul nuw nsw i32 %stack_var_-16.02.reload, %stack_var_-16.02.reload
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_4692c

dec_label_pc_4692c:                               ; preds = %dec_label_pc_46919, %dec_label_pc_4690e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

