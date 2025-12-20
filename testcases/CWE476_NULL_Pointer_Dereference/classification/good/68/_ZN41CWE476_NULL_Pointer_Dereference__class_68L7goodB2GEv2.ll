@global_var_6d278 = external local_unnamed_addr global i64
@global_var_491d8 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_25250:
  store i64 0, ptr @global_var_6d278, align 8
  %0 = call i64 @anon1()
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_25306:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i64, ptr @global_var_6d278, align 8
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %dec_label_pc_25349, label %dec_label_pc_25324

dec_label_pc_25324:                               ; preds = %dec_label_pc_25306
  %2 = inttoptr i64 %0 to ptr
  %3 = load i32, ptr %2, align 4
  call void @printIntLine(i32 %3)
  %4 = inttoptr i64 %0 to ptr
  %5 = call i64 @_ZdlPvm(ptr %4, i64 8)
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25358

dec_label_pc_25349:                               ; preds = %dec_label_pc_25306
  call void @printLine(ptr @global_var_491d8)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25358

dec_label_pc_25358:                               ; preds = %dec_label_pc_25349, %dec_label_pc_25324
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

