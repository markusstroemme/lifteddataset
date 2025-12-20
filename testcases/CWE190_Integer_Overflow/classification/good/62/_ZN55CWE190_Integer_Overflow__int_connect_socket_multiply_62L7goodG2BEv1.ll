@global_var_9543c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6f9b6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_6f9fd, label %dec_label_pc_6f9eb

dec_label_pc_6f9eb:                               ; preds = %dec_label_pc_6f9b6
  %4 = mul i32 %2, 2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_6f9fd

dec_label_pc_6f9fd:                               ; preds = %dec_label_pc_6f9eb, %dec_label_pc_6f9b6
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_6fa12, label %dec_label_pc_6fa0d

dec_label_pc_6fa0d:                               ; preds = %dec_label_pc_6f9fd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6fa12

dec_label_pc_6fa12:                               ; preds = %dec_label_pc_6fa0d, %dec_label_pc_6f9fd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_6fbb5:
  %0 = ptrtoint ptr %arg1 to i64
  store i32 2, ptr %arg1, align 4
  ret i64 %0
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

