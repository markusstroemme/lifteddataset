@staticFive = external local_unnamed_addr global i32
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_502e8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @staticFive, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_50358, label %dec_label_pc_50321

dec_label_pc_50321:                               ; preds = %dec_label_pc_502e8
  %4 = call ptr @_ZnwmPv(i64 8, ptr nonnull %stack_var_-24)
  %5 = ptrtoint ptr %4 to i64
  %6 = bitcast ptr %4 to ptr
  store i32 5, ptr %6, align 4
  %7 = add i64 %5, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 10, ptr %8, align 4
  %9 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_50358

dec_label_pc_50358:                               ; preds = %dec_label_pc_50321, %dec_label_pc_502e8
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_5036d, label %dec_label_pc_50368

dec_label_pc_50368:                               ; preds = %dec_label_pc_50358
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5036d

dec_label_pc_5036d:                               ; preds = %dec_label_pc_50368, %dec_label_pc_50358
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

