@global_var_6d5e1 = external constant [21 x i8]
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

define i32 @staticReturnsFalse.459() local_unnamed_addr {
dec_label_pc_43411:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_438ce:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_43917

dec_label_pc_43917:                               ; preds = %dec_label_pc_43917, %dec_label_pc_438ce
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4392e, label %dec_label_pc_43917

dec_label_pc_4392e:                               ; preds = %dec_label_pc_43917
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_43999

dec_label_pc_43999:                               ; preds = %dec_label_pc_43999, %dec_label_pc_4392e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_439b0, label %dec_label_pc_43999

dec_label_pc_439b0:                               ; preds = %dec_label_pc_43999
  %7 = call i32 @staticReturnsFalse.459()
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_43a0c, label %dec_label_pc_439fb

dec_label_pc_439fb:                               ; preds = %dec_label_pc_439b0
  call void @printLine(ptr @global_var_6d5e1)
  br label %dec_label_pc_43a14

dec_label_pc_43a0c:                               ; preds = %dec_label_pc_439b0
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 16
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %11 = add i64 %4, %constexpr5
  %12 = and i64 %11, -16
  store i64 %12, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_43a14

dec_label_pc_43a14:                               ; preds = %dec_label_pc_43a0c, %dec_label_pc_439fb
  %13 = call i32 @staticReturnsTrue.458()
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i1 %14, false
  %16 = icmp eq i1 %15, false
  br i1 %16, label %dec_label_pc_43a59, label %dec_label_pc_43a22

dec_label_pc_43a22:                               ; preds = %dec_label_pc_43a14
  %stack_var_-48.0.reload = load i64, ptr %stack_var_-48.0.reg2mem, align 8
  %17 = inttoptr i64 %stack_var_-48.0.reload to ptr
  %18 = call ptr @_ZnwmPv(i64 8, ptr %17)
  %19 = ptrtoint ptr %18 to i64
  %20 = bitcast ptr %18 to ptr
  store i32 5, ptr %20, align 4
  %21 = add i64 %19, 4
  %22 = inttoptr i64 %21 to ptr
  store i32 10, ptr %22, align 4
  %23 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %23)
  br label %dec_label_pc_43a59

dec_label_pc_43a59:                               ; preds = %dec_label_pc_43a22, %dec_label_pc_43a14
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_43a6e, label %dec_label_pc_43a69

dec_label_pc_43a69:                               ; preds = %dec_label_pc_43a59
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_43a6e

dec_label_pc_43a6e:                               ; preds = %dec_label_pc_43a69, %dec_label_pc_43a59
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

