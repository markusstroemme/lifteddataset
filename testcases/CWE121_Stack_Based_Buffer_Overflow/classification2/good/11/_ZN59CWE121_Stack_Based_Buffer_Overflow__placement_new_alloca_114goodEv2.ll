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
dec_label_pc_44ef8:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-56 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-56 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 %2, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_44f41

dec_label_pc_44f41:                               ; preds = %dec_label_pc_44f41, %dec_label_pc_44ef8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %2
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_44f58, label %dec_label_pc_44f41

dec_label_pc_44f58:                               ; preds = %dec_label_pc_44f41
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %6 = sub i64 %2, %constexpr1
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_44fc3

dec_label_pc_44fc3:                               ; preds = %dec_label_pc_44fc3, %dec_label_pc_44f58
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_44fda, label %dec_label_pc_44fc3

dec_label_pc_44fda:                               ; preds = %dec_label_pc_44fc3
  %9 = call i32 @globalReturnsTrue()
  %10 = call i32 @globalReturnsTrue()
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_45067, label %dec_label_pc_4503b

dec_label_pc_4503b:                               ; preds = %dec_label_pc_44fda
  %14 = add i64 %6, 15
  %15 = and i64 %14, -16
  %16 = icmp eq i32 %9, 0
  %17 = icmp eq i1 %16, false
  %18 = icmp eq i1 %17, false
  %spec.select = select i1 %18, i64 %1, i64 %15
  %19 = inttoptr i64 %spec.select to ptr
  %20 = call ptr @_ZnwmPv(i64 4, ptr %19)
  %21 = bitcast ptr %20 to ptr
  store i32 5, ptr %21, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_45067

dec_label_pc_45067:                               ; preds = %dec_label_pc_4503b, %dec_label_pc_44fda
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %3, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_4507c, label %dec_label_pc_45077

dec_label_pc_45077:                               ; preds = %dec_label_pc_45067
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4507c

dec_label_pc_4507c:                               ; preds = %dec_label_pc_45077, %dec_label_pc_45067
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5c43d:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

