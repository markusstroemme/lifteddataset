@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_59dc1:
  %0 = ptrtoint ptr %arg1 to i64
  store i16 2, ptr %arg1, align 2
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_59dd9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = load i32, ptr %stack_var_-20, align 4
  %4 = mul i32 %3, 65536
  %sext = add i32 %4, 65536
  %5 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_59e31, label %dec_label_pc_59e2c

dec_label_pc_59e2c:                               ; preds = %dec_label_pc_59dd9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_59e31

dec_label_pc_59e31:                               ; preds = %dec_label_pc_59e2c, %dec_label_pc_59dd9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

