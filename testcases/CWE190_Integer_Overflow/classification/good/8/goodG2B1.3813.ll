@global_var_833c4 = external constant [21 x i8]
@global_var_8c829 = external constant [5 x i8]

define i32 @staticReturnsTrue.377() local_unnamed_addr {
dec_label_pc_16a0e:
  ret i32 1
}

define i32 @staticReturnsFalse.378() local_unnamed_addr {
dec_label_pc_16a1d:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16c4d:
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsFalse.378()
  %1 = icmp eq i32 %0, 0
  store i64 3, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_16c88, label %dec_label_pc_16c6f

dec_label_pc_16c6f:                               ; preds = %dec_label_pc_16c4d
  call void @printLine(ptr @global_var_833c4)
  store i64 1, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_16c88

dec_label_pc_16c88:                               ; preds = %dec_label_pc_16c4d, %dec_label_pc_16c6f
  %2 = call i32 @staticReturnsTrue.377()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_16caf, label %dec_label_pc_16c96

dec_label_pc_16c96:                               ; preds = %dec_label_pc_16c88
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printLongLongLine(i64 %stack_var_-24.0.reload)
  br label %dec_label_pc_16caf

dec_label_pc_16caf:                               ; preds = %dec_label_pc_16c96, %dec_label_pc_16c88
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

