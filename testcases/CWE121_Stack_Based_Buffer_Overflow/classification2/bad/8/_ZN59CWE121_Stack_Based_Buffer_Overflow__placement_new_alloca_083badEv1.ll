@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i32 @staticReturnsTrue.458() local_unnamed_addr {
dec_label_pc_43402:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_43420:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-56 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-56 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 %2, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_43469

dec_label_pc_43469:                               ; preds = %dec_label_pc_43469, %dec_label_pc_43420
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %2
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_43480, label %dec_label_pc_43469

dec_label_pc_43480:                               ; preds = %dec_label_pc_43469
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %6 = sub i64 %2, %constexpr1
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_434eb

dec_label_pc_434eb:                               ; preds = %dec_label_pc_434eb, %dec_label_pc_43480
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_43502, label %dec_label_pc_434eb

dec_label_pc_43502:                               ; preds = %dec_label_pc_434eb
  %9 = call i32 @staticReturnsTrue.458()
  %10 = call i32 @staticReturnsTrue.458()
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_4359a, label %dec_label_pc_43563

dec_label_pc_43563:                               ; preds = %dec_label_pc_43502
  %14 = add i64 %6, 15
  %15 = and i64 %14, -16
  %16 = icmp eq i32 %9, 0
  %17 = icmp eq i1 %16, false
  %18 = icmp eq i1 %17, false
  %spec.select = select i1 %18, i64 %1, i64 %15
  %19 = inttoptr i64 %spec.select to ptr
  %20 = call ptr @_ZnwmPv(i64 8, ptr %19)
  %21 = ptrtoint ptr %20 to i64
  %22 = bitcast ptr %20 to ptr
  store i32 5, ptr %22, align 4
  %23 = add i64 %21, 4
  %24 = inttoptr i64 %23 to ptr
  store i32 10, ptr %24, align 4
  %25 = load i32, ptr %22, align 4
  call void @printIntLine(i32 %25)
  br label %dec_label_pc_4359a

dec_label_pc_4359a:                               ; preds = %dec_label_pc_43563, %dec_label_pc_43502
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %3, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_435af, label %dec_label_pc_435aa

dec_label_pc_435aa:                               ; preds = %dec_label_pc_4359a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_435af

dec_label_pc_435af:                               ; preds = %dec_label_pc_435aa, %dec_label_pc_4359a
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

