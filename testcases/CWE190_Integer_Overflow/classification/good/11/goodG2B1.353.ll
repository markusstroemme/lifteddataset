@global_var_8174b = external constant [21 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9afd:
  %stack_var_-10.0.reg2mem = alloca i8, align 1
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i8 3, ptr %stack_var_-10.0.reg2mem, align 1
  br i1 %1, label %dec_label_pc_9b30, label %dec_label_pc_9b1b

dec_label_pc_9b1b:                                ; preds = %dec_label_pc_9afd
  call void @printLine(ptr @global_var_8174b)
  store i8 33, ptr %stack_var_-10.0.reg2mem, align 1
  br label %dec_label_pc_9b30

dec_label_pc_9b30:                                ; preds = %dec_label_pc_9afd, %dec_label_pc_9b1b
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_9b5a, label %dec_label_pc_9b3e

dec_label_pc_9b3e:                                ; preds = %dec_label_pc_9b30
  %stack_var_-10.0.reload = load i8, ptr %stack_var_-10.0.reg2mem, align 1
  call void @printHexCharLine(i8 %stack_var_-10.0.reload)
  br label %dec_label_pc_9b5a

dec_label_pc_9b5a:                                ; preds = %dec_label_pc_9b3e, %dec_label_pc_9b30
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6a669:
  ret i32 0
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

