@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_50f68:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrue()
  %4 = call i32 @globalReturnsTrue()
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_50fd3, label %dec_label_pc_50fa7

dec_label_pc_50fa7:                               ; preds = %dec_label_pc_50f68
  %8 = icmp eq i32 %3, 0
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  %11 = ptrtoint ptr %stack_var_-24 to i64
  %spec.select = select i1 %10, i64 %1, i64 %11
  %12 = inttoptr i64 %spec.select to ptr
  %13 = call ptr @_ZnwmPv(i64 4, ptr %12)
  %14 = bitcast ptr %13 to ptr
  store i32 5, ptr %14, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_50fd3

dec_label_pc_50fd3:                               ; preds = %dec_label_pc_50fa7, %dec_label_pc_50f68
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %2, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_50fe8, label %dec_label_pc_50fe3

dec_label_pc_50fe3:                               ; preds = %dec_label_pc_50fd3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_50fe8

dec_label_pc_50fe8:                               ; preds = %dec_label_pc_50fe3, %dec_label_pc_50fd3
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

