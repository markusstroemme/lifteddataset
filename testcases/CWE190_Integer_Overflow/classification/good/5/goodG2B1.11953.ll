@global_var_8f4ba = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3058 = external local_unnamed_addr global i32
@global_var_c3368 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_45f0e:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_c3368, align 4
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_45f43, label %dec_label_pc_45f2b

dec_label_pc_45f2b:                               ; preds = %dec_label_pc_45f0e
  call void @printLine(ptr @global_var_8f4ba)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_45f43

dec_label_pc_45f43:                               ; preds = %dec_label_pc_45f0e, %dec_label_pc_45f2b
  %2 = load i32, ptr @global_var_c3058, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_45f60, label %dec_label_pc_45f4d

dec_label_pc_45f4d:                               ; preds = %dec_label_pc_45f43
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_45f60

dec_label_pc_45f60:                               ; preds = %dec_label_pc_45f4d, %dec_label_pc_45f43
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

