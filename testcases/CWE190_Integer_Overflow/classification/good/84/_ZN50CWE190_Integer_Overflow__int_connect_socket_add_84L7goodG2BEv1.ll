@global_var_9543c = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_6f0e4:
  %0 = bitcast ptr %result to ptr
  store i32 2, ptr %0, align 4
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_6f10a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = add i32 %2, 1
  call void @printIntLine(i32 %3)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_6f1b0:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6f223, label %dec_label_pc_6f1ed

dec_label_pc_6f1ed:                               ; preds = %dec_label_pc_6f1b0
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6f223

dec_label_pc_6f223:                               ; preds = %dec_label_pc_6f1ed, %dec_label_pc_6f1b0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

