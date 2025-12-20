@global_var_8abd3 = external constant [21 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc088 = external local_unnamed_addr global i32
@global_var_bc440 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5d093:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_bc440, align 4
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_5d0c8, label %dec_label_pc_5d0b0

dec_label_pc_5d0b0:                               ; preds = %dec_label_pc_5d093
  call void @printLine(ptr @global_var_8abd3)
  store i32 1, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_5d0c8

dec_label_pc_5d0c8:                               ; preds = %dec_label_pc_5d093, %dec_label_pc_5d0b0
  %2 = load i32, ptr @global_var_bc088, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_5d0e6, label %dec_label_pc_5d0d2

dec_label_pc_5d0d2:                               ; preds = %dec_label_pc_5d0c8
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  call void @printUnsignedLine(i32 %stack_var_-16.0.reload)
  br label %dec_label_pc_5d0e6

dec_label_pc_5d0e6:                               ; preds = %dec_label_pc_5d0d2, %dec_label_pc_5d0c8
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

