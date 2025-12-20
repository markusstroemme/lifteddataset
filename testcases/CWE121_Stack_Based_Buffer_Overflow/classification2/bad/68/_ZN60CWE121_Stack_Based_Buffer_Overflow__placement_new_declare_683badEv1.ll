@global_var_89220 = external local_unnamed_addr global i64
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_53ec6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %1, ptr @global_var_89220, align 8
  %2 = call i64 @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_53f0e, label %dec_label_pc_53f09

dec_label_pc_53f09:                               ; preds = %dec_label_pc_53ec6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_53f0e

dec_label_pc_53f0e:                               ; preds = %dec_label_pc_53f09, %dec_label_pc_53ec6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_53fb9:
  %0 = load i64, ptr @global_var_89220, align 8
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZnwmPv(i64 8, ptr %1)
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %2 to ptr
  store i32 5, ptr %4, align 4
  %5 = add i64 %3, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 10, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  call void @printIntLine(i32 %7)
  ret i64 ptrtoint (ptr @0 to i64)
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

