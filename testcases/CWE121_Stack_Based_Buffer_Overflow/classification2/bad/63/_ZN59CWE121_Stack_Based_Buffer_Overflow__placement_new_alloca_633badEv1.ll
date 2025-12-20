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
dec_label_pc_4b4c6:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4b50f

dec_label_pc_4b50f:                               ; preds = %dec_label_pc_4b50f, %dec_label_pc_4b4c6
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4b526, label %dec_label_pc_4b50f

dec_label_pc_4b526:                               ; preds = %dec_label_pc_4b50f
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4b591

dec_label_pc_4b591:                               ; preds = %dec_label_pc_4b591, %dec_label_pc_4b526
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4b5a8, label %dec_label_pc_4b591

dec_label_pc_4b5a8:                               ; preds = %dec_label_pc_4b591
  %7 = add i64 %4, 15
  %8 = and i64 %7, -16
  store i64 %8, ptr %stack_var_-40, align 8
  %9 = bitcast ptr %stack_var_-40 to ptr
  %10 = call i64 @anon1(ptr nonnull %9)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_4b60e, label %dec_label_pc_4b609

dec_label_pc_4b609:                               ; preds = %dec_label_pc_4b5a8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b60e

dec_label_pc_4b60e:                               ; preds = %dec_label_pc_4b609, %dec_label_pc_4b5a8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_4b8b9:
  %0 = bitcast ptr %arg1 to ptr
  %1 = call ptr @_ZnwmPv(i64 8, ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = bitcast ptr %1 to ptr
  store i32 5, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 10, ptr %5, align 4
  %6 = load i32, ptr %3, align 4
  call void @printIntLine(i32 %6)
  ret i64 ptrtoint (ptr @0 to i64)
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

