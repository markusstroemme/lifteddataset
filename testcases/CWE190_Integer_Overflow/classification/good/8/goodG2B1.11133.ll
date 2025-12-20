@global_var_87290 = external constant [21 x i8]
@global_var_8c81c = external constant [4 x i8]

define i32 @staticReturnsTrue.1109() local_unnamed_addr {
dec_label_pc_3caa7:
  ret i32 1
}

define i32 @staticReturnsFalse.1110() local_unnamed_addr {
dec_label_pc_3cab6:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3cf99:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.1110()
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3cfd2, label %dec_label_pc_3cfba

dec_label_pc_3cfba:                               ; preds = %dec_label_pc_3cf99
  call void @printLine(ptr @global_var_87290)
  store i32 1, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_3cfd2

dec_label_pc_3cfd2:                               ; preds = %dec_label_pc_3cf99, %dec_label_pc_3cfba
  %2 = call i32 @staticReturnsTrue.1109()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3cff4, label %dec_label_pc_3cfe0

dec_label_pc_3cfe0:                               ; preds = %dec_label_pc_3cfd2
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  call void @printIntLine(i32 %stack_var_-16.0.reload)
  br label %dec_label_pc_3cff4

dec_label_pc_3cff4:                               ; preds = %dec_label_pc_3cfe0, %dec_label_pc_3cfd2
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

