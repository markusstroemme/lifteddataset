@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_230f6:
  %rax.1.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i32 0, ptr %1, align 4
  %2 = add i64 %0, 4
  %3 = inttoptr i64 %2 to ptr
  store i32 0, ptr %3, align 4
  %4 = icmp eq i64 %0, 0
  %5 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %5)
  store i64 0, ptr %rax.1.reg2mem, align 8
  br i1 %4, label %dec_label_pc_23123, label %dec_label_pc_2310c

dec_label_pc_2310c:                               ; preds = %dec_label_pc_230f6
  %6 = inttoptr i64 %0 to ptr
  %7 = call i64 @_ZdlPvm(ptr %6, i64 8)
  store i64 %7, ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_23123

dec_label_pc_23123:                               ; preds = %dec_label_pc_230f6, %dec_label_pc_2310c
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
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

