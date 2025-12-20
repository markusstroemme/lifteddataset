@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_24ab5:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  store i32 0, ptr %2, align 4
  %3 = add i64 %1, 4
  %4 = inttoptr i64 %3 to ptr
  store i32 0, ptr %4, align 4
  store i64 %1, ptr %stack_var_-32, align 8
  %5 = call i64 @anon1(ptr nonnull %stack_var_-32)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_24b1c, label %dec_label_pc_24b17

dec_label_pc_24b17:                               ; preds = %dec_label_pc_24ab5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_24b1c

dec_label_pc_24b1c:                               ; preds = %dec_label_pc_24b17, %dec_label_pc_24ab5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_24bc2:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %3 = trunc i64 %1 to i32
  call void @printIntLine(i32 %3)
  %4 = icmp eq ptr %arg1, null
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_24c08, label %dec_label_pc_24bfb

dec_label_pc_24bfb:                               ; preds = %dec_label_pc_24bc2
  %5 = call i64 @_ZdlPvm(ptr nonnull %arg1, i64 8)
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_24c08

dec_label_pc_24c08:                               ; preds = %dec_label_pc_24bfb, %dec_label_pc_24bc2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

