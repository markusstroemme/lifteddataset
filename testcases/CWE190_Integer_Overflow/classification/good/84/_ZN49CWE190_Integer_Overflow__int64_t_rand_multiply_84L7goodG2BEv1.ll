@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_652c6:
  store i64 2, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_652f0:
  %0 = icmp sgt ptr %result, null
  br i1 %0, label %dec_label_pc_6530c, label %dec_label_pc_65326

dec_label_pc_6530c:                               ; preds = %dec_label_pc_652f0
  %1 = ptrtoint ptr %result to i64
  %2 = mul i64 %1, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_65326

dec_label_pc_65326:                               ; preds = %dec_label_pc_652f0, %dec_label_pc_6530c
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_653a9:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6541f, label %dec_label_pc_653e9

dec_label_pc_653e9:                               ; preds = %dec_label_pc_653a9
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6541f

dec_label_pc_6541f:                               ; preds = %dec_label_pc_653e9, %dec_label_pc_653a9
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

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

