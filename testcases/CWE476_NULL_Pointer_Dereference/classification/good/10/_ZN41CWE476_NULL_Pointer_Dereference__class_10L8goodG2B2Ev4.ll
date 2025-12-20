@global_var_4a578 = external constant [4 x i8]
@global_var_6d060 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2232c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_6d060, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2239a, label %dec_label_pc_2236d

dec_label_pc_2236d:                               ; preds = %dec_label_pc_2232c
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 0, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %.pr = load i32, ptr @global_var_6d060, align 4
  %6 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_2239a, label %dec_label_pc_22377

dec_label_pc_22377:                               ; preds = %dec_label_pc_2236d
  %7 = load i32, ptr %3, align 4
  call void @printIntLine(i32 %7)
  %8 = icmp eq i64 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_2239a, label %dec_label_pc_2238d

dec_label_pc_2238d:                               ; preds = %dec_label_pc_22377
  %9 = inttoptr i64 %2 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  store i64 %10, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2239a

dec_label_pc_2239a:                               ; preds = %dec_label_pc_2232c, %dec_label_pc_2238d, %dec_label_pc_22377, %dec_label_pc_2236d
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

