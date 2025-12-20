@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2b46c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = add i64 %1, 49
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %6 = inttoptr i64 %1 to ptr
  %7 = call i32 @strlen(ptr %6)
  %8 = bitcast ptr %stack_var_-72 to ptr
  %9 = call ptr @strncpy(ptr nonnull %8, ptr %6, i32 %7)
  call void @printLine(ptr %6)
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %dec_label_pc_2b531, label %dec_label_pc_2b525

dec_label_pc_2b525:                               ; preds = %dec_label_pc_2b46c
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %2, ptr %12)
  br label %dec_label_pc_2b531

dec_label_pc_2b531:                               ; preds = %dec_label_pc_2b525, %dec_label_pc_2b46c
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_2b546, label %dec_label_pc_2b541

dec_label_pc_2b541:                               ; preds = %dec_label_pc_2b531
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2b546

dec_label_pc_2b546:                               ; preds = %dec_label_pc_2b541, %dec_label_pc_2b531
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

