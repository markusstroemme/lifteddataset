@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32

define void @anon0(ptr %result, i8 %arg2) local_unnamed_addr {
dec_label_pc_48198:
  %0 = bitcast ptr %result to ptr
  store i8 2, ptr %0, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_481be:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = add i8 %2, 1
  call void @printHexCharLine(i8 %3)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_48264:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 1)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i8 32)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_482d5, label %dec_label_pc_4829f

dec_label_pc_4829f:                               ; preds = %dec_label_pc_48264
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 1)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_482d5

dec_label_pc_482d5:                               ; preds = %dec_label_pc_4829f, %dec_label_pc_48264
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

