@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_18c5f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-80, align 8
  %3 = call i64 @anon1(ptr nonnull %stack_var_-80)
  store i64 0, ptr %stack_var_-72, align 8
  %4 = load ptr, ptr %stack_var_-80, align 8
  %5 = call i32 @strlen(ptr %4)
  %6 = load ptr, ptr %stack_var_-80, align 8
  %7 = bitcast ptr %6 to ptr
  %8 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %7, i32 %5)
  %9 = load ptr, ptr %stack_var_-80, align 8
  call void @printLine(ptr %9)
  %10 = load ptr, ptr %stack_var_-80, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %dec_label_pc_18d11, label %dec_label_pc_18d05

dec_label_pc_18d05:                               ; preds = %dec_label_pc_18c5f
  %12 = ptrtoint ptr %6 to i64
  %13 = bitcast ptr %10 to ptr
  %14 = and i64 %12, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_18d11

dec_label_pc_18d11:                               ; preds = %dec_label_pc_18d05, %dec_label_pc_18c5f
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_18d26, label %dec_label_pc_18d21

dec_label_pc_18d21:                               ; preds = %dec_label_pc_18d11
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_18d26

dec_label_pc_18d26:                               ; preds = %dec_label_pc_18d21, %dec_label_pc_18d11
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_18e01:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

