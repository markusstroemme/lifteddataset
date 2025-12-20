@global_var_89218 = external local_unnamed_addr global i64
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_52b7f:
  %0 = load i64, ptr @global_var_89218, align 8
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZnwmPv(i64 4, ptr %1)
  %3 = bitcast ptr %2 to ptr
  store i32 5, ptr %3, align 4
  call void @printIntLine(i32 5)
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_52bc5:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %1, ptr @global_var_89218, align 8
  %2 = call i64 @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_52c0d, label %dec_label_pc_52c08

dec_label_pc_52c08:                               ; preds = %dec_label_pc_52bc5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_52c0d

dec_label_pc_52c0d:                               ; preds = %dec_label_pc_52c08, %dec_label_pc_52bc5
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

