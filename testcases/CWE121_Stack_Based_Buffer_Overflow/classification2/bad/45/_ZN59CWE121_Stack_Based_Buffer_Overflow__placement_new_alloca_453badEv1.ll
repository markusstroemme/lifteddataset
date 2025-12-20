@global_var_891d0 = external local_unnamed_addr global i64
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_49a99:
  %0 = load i64, ptr @global_var_891d0, align 8
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZnwmPv(i64 8, ptr %1)
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %2 to ptr
  store i32 5, ptr %4, align 4
  %5 = add i64 %3, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 10, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  call void @printIntLine(i32 %7)
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_49aea:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_49b33

dec_label_pc_49b33:                               ; preds = %dec_label_pc_49b33, %dec_label_pc_49aea
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_49b4a, label %dec_label_pc_49b33

dec_label_pc_49b4a:                               ; preds = %dec_label_pc_49b33
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %6, ptr %stack_var_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_49bb5

dec_label_pc_49bb5:                               ; preds = %dec_label_pc_49bb5, %dec_label_pc_49b4a
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_49bcc, label %dec_label_pc_49bb5

dec_label_pc_49bcc:                               ; preds = %dec_label_pc_49bb5
  store i64 %6, ptr @global_var_891d0, align 8
  %9 = call i64 @anon0()
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_49c36, label %dec_label_pc_49c31

dec_label_pc_49c31:                               ; preds = %dec_label_pc_49bcc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_49c36

dec_label_pc_49c36:                               ; preds = %dec_label_pc_49c31, %dec_label_pc_49bcc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

