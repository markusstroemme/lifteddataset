@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_89064 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5177a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_89064, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_517df, label %dec_label_pc_517b3

dec_label_pc_517b3:                               ; preds = %dec_label_pc_5177a
  %4 = call ptr @_ZnwmPv(i64 4, ptr nonnull %stack_var_-24)
  %5 = bitcast ptr %4 to ptr
  store i32 5, ptr %5, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_517df

dec_label_pc_517df:                               ; preds = %dec_label_pc_517b3, %dec_label_pc_5177a
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_517f4, label %dec_label_pc_517ef

dec_label_pc_517ef:                               ; preds = %dec_label_pc_517df
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_517f4

dec_label_pc_517f4:                               ; preds = %dec_label_pc_517ef, %dec_label_pc_517df
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

