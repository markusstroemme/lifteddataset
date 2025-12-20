@global_var_8f67a = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3070 = external local_unnamed_addr global i32
@global_var_c33e0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_477c8:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_c33e0, align 4
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_477fd, label %dec_label_pc_477e5

dec_label_pc_477e5:                               ; preds = %dec_label_pc_477c8
  call void @printLine(ptr @global_var_8f67a)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_477fd

dec_label_pc_477fd:                               ; preds = %dec_label_pc_477c8, %dec_label_pc_477e5
  %2 = load i32, ptr @global_var_c3070, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_4781a, label %dec_label_pc_47807

dec_label_pc_47807:                               ; preds = %dec_label_pc_477fd
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_4781a

dec_label_pc_4781a:                               ; preds = %dec_label_pc_47807, %dec_label_pc_477fd
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

