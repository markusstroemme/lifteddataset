@global_var_6d270 = external local_unnamed_addr global i64
@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_25206:
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i32 0, ptr %1, align 4
  %2 = add i64 %0, 4
  %3 = inttoptr i64 %2 to ptr
  store i32 0, ptr %3, align 4
  store i64 %0, ptr @global_var_6d270, align 8
  %4 = call i64 @anon1()
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_252c9:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i64, ptr @global_var_6d270, align 8
  %1 = inttoptr i64 %0 to ptr
  %2 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %2)
  %3 = icmp eq i64 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_25303, label %dec_label_pc_252f6

dec_label_pc_252f6:                               ; preds = %dec_label_pc_252c9
  %4 = inttoptr i64 %0 to ptr
  %5 = call i64 @_ZdlPvm(ptr %4, i64 8)
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25303

dec_label_pc_25303:                               ; preds = %dec_label_pc_252f6, %dec_label_pc_252c9
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

