@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_5de70:
  store i64 9223372036854775807, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5dea0:
  %0 = icmp sgt ptr %result, null
  br i1 %0, label %dec_label_pc_5debc, label %dec_label_pc_5ded6

dec_label_pc_5debc:                               ; preds = %dec_label_pc_5dea0
  %1 = ptrtoint ptr %result to i64
  %2 = mul i64 %1, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_5ded6

dec_label_pc_5ded6:                               ; preds = %dec_label_pc_5dea0, %dec_label_pc_5debc
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5dfcd:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, i32 0)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5e023, label %dec_label_pc_5e01e

dec_label_pc_5e01e:                               ; preds = %dec_label_pc_5dfcd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5e023

dec_label_pc_5e023:                               ; preds = %dec_label_pc_5e01e, %dec_label_pc_5dfcd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

