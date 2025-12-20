@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_51088:
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
  br i1 %7, label %dec_label_pc_510fe, label %dec_label_pc_510c7

dec_label_pc_510c7:                               ; preds = %dec_label_pc_51088
  %8 = icmp eq i32 %3, 0
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  %11 = ptrtoint ptr %stack_var_-24 to i64
  %spec.select = select i1 %10, i64 %1, i64 %11
  %12 = inttoptr i64 %spec.select to ptr
  %13 = call ptr @_ZnwmPv(i64 8, ptr %12)
  %14 = ptrtoint ptr %13 to i64
  %15 = bitcast ptr %13 to ptr
  store i32 5, ptr %15, align 4
  %16 = add i64 %14, 4
  %17 = inttoptr i64 %16 to ptr
  store i32 10, ptr %17, align 4
  %18 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %18)
  br label %dec_label_pc_510fe

dec_label_pc_510fe:                               ; preds = %dec_label_pc_510c7, %dec_label_pc_51088
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %2, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_51113, label %dec_label_pc_5110e

dec_label_pc_5110e:                               ; preds = %dec_label_pc_510fe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_51113

dec_label_pc_51113:                               ; preds = %dec_label_pc_5110e, %dec_label_pc_510fe
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

