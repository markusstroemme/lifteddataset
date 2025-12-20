@global_var_1000 = external global ptr
@0 = external global i32
@global_var_fff = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5db8d:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %stack_var_-176 = alloca ptr, align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-184 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5dbe8

dec_label_pc_5dbe8:                               ; preds = %dec_label_pc_5dbe8, %dec_label_pc_5db8d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5dbff, label %dec_label_pc_5dbe8

dec_label_pc_5dbff:                               ; preds = %dec_label_pc_5dbe8
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_5dc6d

dec_label_pc_5dc6d:                               ; preds = %dec_label_pc_5dc6d, %dec_label_pc_5dbff
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_5dc84, label %dec_label_pc_5dc6d

dec_label_pc_5dc84:                               ; preds = %dec_label_pc_5dc6d
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %stack_var_-176 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = load ptr, ptr %stack_var_-176, align 8
  %12 = ptrtoint ptr %11 to i64
  %13 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %14 = load i64, ptr %stack_var_-136, align 8
  %15 = bitcast ptr %11 to ptr
  store i64 %14, ptr %15, align 8
  %16 = add i64 %12, 8
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %12, 16
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %12, 24
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %12, 32
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %12, 40
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %12, 48
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %12, 56
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %12, 64
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %12, 72
  %33 = inttoptr i64 %32 to ptr
  %34 = add i64 %12, 80
  %35 = inttoptr i64 %34 to ptr
  %36 = add i64 %12, 88
  %37 = inttoptr i64 %36 to ptr
  %38 = add i64 %12, 96
  %39 = inttoptr i64 %38 to ptr
  %40 = add i64 %12, 99
  %41 = inttoptr i64 %40 to ptr
  store i8 0, ptr %41, align 1
  call void @printLine(ptr %11)
  %42 = call i64 @__readfsqword(i64 40)
  %43 = icmp eq i64 %1, %42
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %43, label %dec_label_pc_5dda5, label %dec_label_pc_5dda0

dec_label_pc_5dda0:                               ; preds = %dec_label_pc_5dc84
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5dda5

dec_label_pc_5dda5:                               ; preds = %dec_label_pc_5dda0, %dec_label_pc_5dc84
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

