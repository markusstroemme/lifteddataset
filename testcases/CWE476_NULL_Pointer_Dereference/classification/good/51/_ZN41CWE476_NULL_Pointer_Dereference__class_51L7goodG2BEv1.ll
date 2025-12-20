@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_24113:
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i32 0, ptr %1, align 4
  %2 = add i64 %0, 4
  %3 = inttoptr i64 %2 to ptr
  store i32 0, ptr %3, align 4
  %4 = inttoptr i64 %0 to ptr
  %5 = call i64 @anon1(ptr %4)
  ret i64 %5
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_241c7:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %3 = trunc i64 %1 to i32
  call void @printIntLine(i32 %3)
  %4 = icmp eq ptr %arg1, null
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_241fa, label %dec_label_pc_241ed

dec_label_pc_241ed:                               ; preds = %dec_label_pc_241c7
  %5 = call i64 @_ZdlPvm(ptr nonnull %arg1, i64 8)
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_241fa

dec_label_pc_241fa:                               ; preds = %dec_label_pc_241ed, %dec_label_pc_241c7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

