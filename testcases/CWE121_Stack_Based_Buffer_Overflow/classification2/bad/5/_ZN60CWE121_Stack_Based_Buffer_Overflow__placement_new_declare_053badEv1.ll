@staticTrue = external local_unnamed_addr global i32
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4fde6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @staticTrue, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4fe54, label %dec_label_pc_4fe1d

dec_label_pc_4fe1d:                               ; preds = %dec_label_pc_4fde6
  %3 = call ptr @_ZnwmPv(i64 8, ptr nonnull %stack_var_-24)
  %4 = ptrtoint ptr %3 to i64
  %5 = bitcast ptr %3 to ptr
  store i32 5, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 10, ptr %7, align 4
  %8 = load i32, ptr %5, align 4
  call void @printIntLine(i32 %8)
  br label %dec_label_pc_4fe54

dec_label_pc_4fe54:                               ; preds = %dec_label_pc_4fe1d, %dec_label_pc_4fde6
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_4fe69, label %dec_label_pc_4fe64

dec_label_pc_4fe64:                               ; preds = %dec_label_pc_4fe54
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4fe69

dec_label_pc_4fe69:                               ; preds = %dec_label_pc_4fe64, %dec_label_pc_4fe54
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

