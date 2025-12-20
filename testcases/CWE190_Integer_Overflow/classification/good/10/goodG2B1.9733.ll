@global_var_85af0 = external constant [21 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8070 = external local_unnamed_addr global i32
@global_var_b8320 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3daa4:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_b8320, align 4
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3dad9, label %dec_label_pc_3dac1

dec_label_pc_3dac1:                               ; preds = %dec_label_pc_3daa4
  call void @printLine(ptr @global_var_85af0)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_3dad9

dec_label_pc_3dad9:                               ; preds = %dec_label_pc_3daa4, %dec_label_pc_3dac1
  %2 = load i32, ptr @global_var_b8070, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3daf6, label %dec_label_pc_3dae3

dec_label_pc_3dae3:                               ; preds = %dec_label_pc_3dad9
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_3daf6

dec_label_pc_3daf6:                               ; preds = %dec_label_pc_3dae3, %dec_label_pc_3dad9
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

