@global_var_48298 = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsTrue.359() local_unnamed_addr {
dec_label_pc_fbd0:
  ret i32 1
}

define i32 @staticReturnsFalse.360() local_unnamed_addr {
dec_label_pc_fbdf:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_fcef:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %stack_var_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 5, ptr %stack_var_-28, align 4
  %1 = call i32 @staticReturnsFalse.360()
  %2 = icmp eq i32 %1, 0
  store ptr %stack_var_-28, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_fd38, label %dec_label_pc_fd1f

dec_label_pc_fd1f:                                ; preds = %dec_label_pc_fcef
  call void @printLine(ptr @global_var_48298)
  br label %dec_label_pc_fd38

dec_label_pc_fd38:                                ; preds = %dec_label_pc_fcef, %dec_label_pc_fd1f
  %3 = call i32 @staticReturnsTrue.359()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_fd53, label %dec_label_pc_fd46

dec_label_pc_fd46:                                ; preds = %dec_label_pc_fd38
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %5 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_fd53

dec_label_pc_fd53:                                ; preds = %dec_label_pc_fd46, %dec_label_pc_fd38
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_fd68, label %dec_label_pc_fd63

dec_label_pc_fd63:                                ; preds = %dec_label_pc_fd53
  call void @__stack_chk_fail()
  br label %dec_label_pc_fd68

dec_label_pc_fd68:                                ; preds = %dec_label_pc_fd63, %dec_label_pc_fd53
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

