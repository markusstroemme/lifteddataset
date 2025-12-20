@0 = external global i32
@global_var_6c0a4 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_1689f:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_6c0a4, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_168ce, label %dec_label_pc_168b9

dec_label_pc_168b9:                               ; preds = %dec_label_pc_1689f
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  store i8 0, ptr %3, align 1
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_168ce

dec_label_pc_168ce:                               ; preds = %dec_label_pc_168b9, %dec_label_pc_1689f
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_168d4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_6c0a4, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %3 = load i64, ptr %stack_var_-136, align 8
  %4 = inttoptr i64 %1 to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %1, 8
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %1, 16
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %1, 24
  %10 = inttoptr i64 %9 to ptr
  %11 = add i64 %1, 32
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %1, 40
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %1, 48
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %1, 56
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %1, 64
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %1, 72
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %1, 80
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %1, 88
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %1, 96
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %1, 99
  %30 = inttoptr i64 %29 to ptr
  store i8 0, ptr %30, align 1
  %31 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %31)
  %32 = icmp eq i64 %1, 0
  br i1 %32, label %dec_label_pc_169da, label %dec_label_pc_169cb

dec_label_pc_169cb:                               ; preds = %dec_label_pc_168d4
  call void @_ZdaPv(ptr %4, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_169da

dec_label_pc_169da:                               ; preds = %dec_label_pc_169cb, %dec_label_pc_168d4
  %33 = call i64 @__readfsqword(i64 40)
  %34 = icmp eq i64 %0, %33
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %34, label %dec_label_pc_169ef, label %dec_label_pc_169ea

dec_label_pc_169ea:                               ; preds = %dec_label_pc_169da
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_169ef

dec_label_pc_169ef:                               ; preds = %dec_label_pc_169ea, %dec_label_pc_169da
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

