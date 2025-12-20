@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_780d2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-192 = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  store ptr %1, ptr %stack_var_-192, align 8
  %2 = call i64 @anon1(ptr nonnull %stack_var_-192)
  store i64 0, ptr %stack_var_-184, align 8
  %3 = load ptr, ptr %stack_var_-192, align 8
  %4 = call i32 @strlen(ptr %3)
  %5 = load ptr, ptr %stack_var_-192, align 8
  %6 = bitcast ptr %stack_var_-184 to ptr
  %7 = call ptr @strncpy(ptr nonnull %6, ptr %5, i32 %4)
  %8 = load ptr, ptr %stack_var_-192, align 8
  call void @printLine(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_781a5, label %dec_label_pc_781a0

dec_label_pc_781a0:                               ; preds = %dec_label_pc_780d2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_781a5

dec_label_pc_781a5:                               ; preds = %dec_label_pc_781a0, %dec_label_pc_780d2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_781f1:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

