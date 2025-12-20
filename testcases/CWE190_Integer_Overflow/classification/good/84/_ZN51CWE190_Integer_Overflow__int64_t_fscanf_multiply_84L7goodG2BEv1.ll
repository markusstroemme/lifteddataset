@global_var_76ce9 = external constant [5 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_59e1c:
  store i64 2, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_59e46:
  %0 = icmp sgt ptr %result, null
  br i1 %0, label %dec_label_pc_59e62, label %dec_label_pc_59e7c

dec_label_pc_59e62:                               ; preds = %dec_label_pc_59e46
  %1 = ptrtoint ptr %result to i64
  %2 = mul i64 %1, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_59e7c

dec_label_pc_59e7c:                               ; preds = %dec_label_pc_59e46, %dec_label_pc_59e62
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_59eff:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_59f75, label %dec_label_pc_59f3f

dec_label_pc_59f3f:                               ; preds = %dec_label_pc_59eff
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_59f75

dec_label_pc_59f75:                               ; preds = %dec_label_pc_59f3f, %dec_label_pc_59eff
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

