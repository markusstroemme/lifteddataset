@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5a083:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %3 = ptrtoint ptr %stack_var_-120 to i64
  %4 = add i64 %3, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store i64 0, ptr %stack_var_-184, align 8
  %6 = bitcast ptr %stack_var_-184 to ptr
  %7 = call ptr @strcat(ptr nonnull %6, ptr nonnull %1)
  call void @printLine(ptr nonnull %1)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_5a177, label %dec_label_pc_5a172

dec_label_pc_5a172:                               ; preds = %dec_label_pc_5a083
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5a177

dec_label_pc_5a177:                               ; preds = %dec_label_pc_5a172, %dec_label_pc_5a083
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

