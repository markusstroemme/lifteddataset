@global_var_4a578 = external constant [4 x i8]
@global_var_6d238 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_233c8:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6d238, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_23405, label %dec_label_pc_233e2

dec_label_pc_233e2:                               ; preds = %dec_label_pc_233c8
  %4 = trunc i64 %1 to i32
  %5 = ptrtoint ptr %arg1 to i64
  call void @printIntLine(i32 %4)
  %6 = icmp eq ptr %arg1, null
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_23405, label %dec_label_pc_233f8

dec_label_pc_233f8:                               ; preds = %dec_label_pc_233e2
  %7 = call i64 @_ZdlPvm(ptr nonnull %arg1, i64 8)
  store i64 %7, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23405

dec_label_pc_23405:                               ; preds = %dec_label_pc_233f8, %dec_label_pc_233e2, %dec_label_pc_233c8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_23408:
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i32 0, ptr %1, align 4
  %2 = add i64 %0, 4
  %3 = inttoptr i64 %2 to ptr
  store i32 0, ptr %3, align 4
  store i32 1, ptr @global_var_6d238, align 4
  %4 = inttoptr i64 %0 to ptr
  %5 = call i64 @anon0(ptr %4)
  ret i64 %5
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

