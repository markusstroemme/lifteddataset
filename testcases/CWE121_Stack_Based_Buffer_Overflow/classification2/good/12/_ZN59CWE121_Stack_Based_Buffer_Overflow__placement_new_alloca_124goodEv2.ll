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
dec_label_pc_45757:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_457a0

dec_label_pc_457a0:                               ; preds = %dec_label_pc_457a0, %dec_label_pc_45757
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_457b7, label %dec_label_pc_457a0

dec_label_pc_457b7:                               ; preds = %dec_label_pc_457a0
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_45822

dec_label_pc_45822:                               ; preds = %dec_label_pc_45822, %dec_label_pc_457b7
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_45839, label %dec_label_pc_45822

dec_label_pc_45839:                               ; preds = %dec_label_pc_45822
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 16
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = call i32 @globalReturnsTrueOrFalse()
  store i64 %8, ptr %stack_var_-56, align 8
  %10 = call i32 @globalReturnsTrueOrFalse()
  %11 = load i64, ptr %stack_var_-56, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = call ptr @_ZnwmPv(i64 8, ptr %12)
  %14 = ptrtoint ptr %13 to i64
  %15 = bitcast ptr %13 to ptr
  store i32 5, ptr %15, align 4
  %16 = add i64 %14, 4
  %17 = inttoptr i64 %16 to ptr
  store i32 10, ptr %17, align 4
  %18 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_45929, label %dec_label_pc_45924

dec_label_pc_45924:                               ; preds = %dec_label_pc_45839
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45929

dec_label_pc_45929:                               ; preds = %dec_label_pc_45924, %dec_label_pc_45839
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5c45b:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

