@global_var_47a6f = external constant [3 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3458f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %6 = inttoptr i64 %1 to ptr
  br i1 %5, label %dec_label_pc_345e9, label %dec_label_pc_345c6

dec_label_pc_345c6:                               ; preds = %dec_label_pc_3458f
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %1, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_3460a

dec_label_pc_345e9:                               ; preds = %dec_label_pc_3458f
  %10 = call ptr @memset(ptr %6, i32 65, i32 49)
  %11 = add i64 %1, 49
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  br label %dec_label_pc_3460a

dec_label_pc_3460a:                               ; preds = %dec_label_pc_345e9, %dec_label_pc_345c6
  %13 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %14 = call i32 @strlen(ptr %13)
  %15 = bitcast ptr %stack_var_-72 to ptr
  %16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %15, i32 %14, ptr @global_var_47a6f, ptr %13)
  call void @printLine(ptr %13)
  %17 = icmp eq i64 %1, 0
  br i1 %17, label %dec_label_pc_3468d, label %dec_label_pc_34681

dec_label_pc_34681:                               ; preds = %dec_label_pc_3460a
  %18 = zext i32 %14 to i64
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %6, ptr %19)
  br label %dec_label_pc_3468d

dec_label_pc_3468d:                               ; preds = %dec_label_pc_34681, %dec_label_pc_3460a
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_346a2, label %dec_label_pc_3469d

dec_label_pc_3469d:                               ; preds = %dec_label_pc_3468d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_346a2

dec_label_pc_346a2:                               ; preds = %dec_label_pc_3469d, %dec_label_pc_3468d
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3aaeb:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

