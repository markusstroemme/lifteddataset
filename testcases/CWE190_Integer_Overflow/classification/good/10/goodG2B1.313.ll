@global_var_816fb = external constant [21 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0a0 = external local_unnamed_addr global i32
@global_var_bc4f8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_9838:
  %stack_var_-10.0.reg2mem = alloca i8, align 1
  %0 = load i32, ptr @global_var_bc4f8, align 4
  %1 = icmp eq i32 %0, 0
  store i8 3, ptr %stack_var_-10.0.reg2mem, align 1
  br i1 %1, label %dec_label_pc_9867, label %dec_label_pc_9852

dec_label_pc_9852:                                ; preds = %dec_label_pc_9838
  call void @printLine(ptr @global_var_816fb)
  store i8 33, ptr %stack_var_-10.0.reg2mem, align 1
  br label %dec_label_pc_9867

dec_label_pc_9867:                                ; preds = %dec_label_pc_9838, %dec_label_pc_9852
  %2 = load i32, ptr @global_var_bc0a0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_988d, label %dec_label_pc_9871

dec_label_pc_9871:                                ; preds = %dec_label_pc_9867
  %stack_var_-10.0.reload = load i8, ptr %stack_var_-10.0.reg2mem, align 1
  call void @printHexCharLine(i8 %stack_var_-10.0.reload)
  br label %dec_label_pc_988d

dec_label_pc_988d:                                ; preds = %dec_label_pc_9871, %dec_label_pc_9867
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

