@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32
@global_var_89050 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_41cf6:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_41d3f

dec_label_pc_41d3f:                               ; preds = %dec_label_pc_41d3f, %dec_label_pc_41cf6
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_41d56, label %dec_label_pc_41d3f

dec_label_pc_41d56:                               ; preds = %dec_label_pc_41d3f
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_41dc1

dec_label_pc_41dc1:                               ; preds = %dec_label_pc_41dc1, %dec_label_pc_41d56
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_41dd8, label %dec_label_pc_41dc1

dec_label_pc_41dd8:                               ; preds = %dec_label_pc_41dc1
  %7 = load i32, ptr @global_var_89050, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_41e68, label %dec_label_pc_41e31

dec_label_pc_41e31:                               ; preds = %dec_label_pc_41dd8
  %9 = add i64 %4, 15
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  %12 = call ptr @_ZnwmPv(i64 8, ptr %11)
  %13 = ptrtoint ptr %12 to i64
  %14 = bitcast ptr %12 to ptr
  store i32 5, ptr %14, align 4
  %15 = add i64 %13, 4
  %16 = inttoptr i64 %15 to ptr
  store i32 10, ptr %16, align 4
  %17 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_41e68

dec_label_pc_41e68:                               ; preds = %dec_label_pc_41e31, %dec_label_pc_41dd8
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_41e7d, label %dec_label_pc_41e78

dec_label_pc_41e78:                               ; preds = %dec_label_pc_41e68
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_41e7d

dec_label_pc_41e7d:                               ; preds = %dec_label_pc_41e78, %dec_label_pc_41e68
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

