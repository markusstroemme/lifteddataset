@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2cfd3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-128, align 8
  %1 = call i64 @anon1(ptr nonnull %stack_var_-128)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = load ptr, ptr %stack_var_-128, align 8
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strncpy(ptr %3, ptr nonnull %4, i32 99)
  %6 = load ptr, ptr %stack_var_-128, align 8
  %7 = ptrtoint ptr %6 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %10)
  %11 = load ptr, ptr %stack_var_-128, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %dec_label_pc_2d060, label %dec_label_pc_2d054

dec_label_pc_2d054:                               ; preds = %dec_label_pc_2cfd3
  %13 = ptrtoint ptr %stack_var_-120 to i64
  %14 = bitcast ptr %11 to ptr
  %15 = and i64 %13, 4294967288
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_2d060

dec_label_pc_2d060:                               ; preds = %dec_label_pc_2d054, %dec_label_pc_2cfd3
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_2d075, label %dec_label_pc_2d070

dec_label_pc_2d070:                               ; preds = %dec_label_pc_2d060
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2d075

dec_label_pc_2d075:                               ; preds = %dec_label_pc_2d070, %dec_label_pc_2d060
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_2d0b8:
  %0 = call i64 @_Znam(i64 100)
  %1 = bitcast ptr %arg1 to ptr
  store i64 %0, ptr %1, align 8
  store i8 0, ptr inttoptr (i64 100 to ptr), align 4
  ret i64 100
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

