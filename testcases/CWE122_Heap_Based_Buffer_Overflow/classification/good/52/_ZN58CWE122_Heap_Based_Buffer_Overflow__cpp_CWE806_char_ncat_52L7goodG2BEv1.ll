@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2798f:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = inttoptr i64 %0 to ptr
  %6 = call i64 @anon1(ptr %5)
  ret i64 %6
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_27a08:
  %0 = call i64 @anon2(ptr %arg1)
  ret i64 %0
}

define i64 @anon2(ptr %arg1) local_unnamed_addr {
dec_label_pc_27ad8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %arg1)
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = call ptr @strncat(ptr nonnull %2, ptr %arg1, i32 %1)
  call void @printLine(ptr %arg1)
  %4 = icmp eq ptr %arg1, null
  br i1 %4, label %dec_label_pc_27b72, label %dec_label_pc_27b66

dec_label_pc_27b66:                               ; preds = %dec_label_pc_27ad8
  %5 = ptrtoint ptr %arg1 to i64
  %6 = bitcast ptr %arg1 to ptr
  %7 = and i64 %5, 4294967295
  %8 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr %6, ptr %8)
  br label %dec_label_pc_27b72

dec_label_pc_27b72:                               ; preds = %dec_label_pc_27b66, %dec_label_pc_27ad8
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_27b87, label %dec_label_pc_27b82

dec_label_pc_27b82:                               ; preds = %dec_label_pc_27b72
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_27b87

dec_label_pc_27b87:                               ; preds = %dec_label_pc_27b82, %dec_label_pc_27b72
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

