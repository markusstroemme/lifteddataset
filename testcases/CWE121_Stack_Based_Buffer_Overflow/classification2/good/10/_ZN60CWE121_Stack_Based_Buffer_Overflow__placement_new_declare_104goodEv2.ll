@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_89060 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_50c94:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_89060, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_50cf7, label %dec_label_pc_50ccb

dec_label_pc_50ccb:                               ; preds = %dec_label_pc_50c94
  %3 = call ptr @_ZnwmPv(i64 4, ptr nonnull %stack_var_-24)
  %4 = bitcast ptr %3 to ptr
  store i32 5, ptr %4, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_50cf7

dec_label_pc_50cf7:                               ; preds = %dec_label_pc_50ccb, %dec_label_pc_50c94
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_50d0c, label %dec_label_pc_50d07

dec_label_pc_50d07:                               ; preds = %dec_label_pc_50cf7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_50d0c

dec_label_pc_50d0c:                               ; preds = %dec_label_pc_50d07, %dec_label_pc_50cf7
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

