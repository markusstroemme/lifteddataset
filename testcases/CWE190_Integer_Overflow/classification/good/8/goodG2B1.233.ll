@global_var_8165b = external constant [21 x i8]
@global_var_8c833 = external constant [6 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_90bd:
  ret i32 1
}

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_90cc:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_92ce:
  %stack_var_-10.0.reg2mem = alloca i8, align 1
  %0 = call i32 @staticReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i8 3, ptr %stack_var_-10.0.reg2mem, align 1
  br i1 %1, label %dec_label_pc_9301, label %dec_label_pc_92ec

dec_label_pc_92ec:                                ; preds = %dec_label_pc_92ce
  call void @printLine(ptr @global_var_8165b)
  store i8 33, ptr %stack_var_-10.0.reg2mem, align 1
  br label %dec_label_pc_9301

dec_label_pc_9301:                                ; preds = %dec_label_pc_92ce, %dec_label_pc_92ec
  %2 = call i32 @staticReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_932b, label %dec_label_pc_930f

dec_label_pc_930f:                                ; preds = %dec_label_pc_9301
  %stack_var_-10.0.reload = load i8, ptr %stack_var_-10.0.reg2mem, align 1
  call void @printHexCharLine(i8 %stack_var_-10.0.reload)
  br label %dec_label_pc_932b

dec_label_pc_932b:                                ; preds = %dec_label_pc_930f, %dec_label_pc_9301
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

