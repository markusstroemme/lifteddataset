@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_15d35:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %data_-168 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_15d82

dec_label_pc_15d82:                               ; preds = %dec_label_pc_15d82, %dec_label_pc_15d35
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_15d99, label %dec_label_pc_15d82

dec_label_pc_15d99:                               ; preds = %dec_label_pc_15d82
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_15e07

dec_label_pc_15e07:                               ; preds = %dec_label_pc_15e07, %dec_label_pc_15d99
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_15e1e, label %dec_label_pc_15e07

dec_label_pc_15e1e:                               ; preds = %dec_label_pc_15e07
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  %10 = call i32 @globalReturnsTrueOrFalse()
  store i8 0, ptr %9, align 16
  %11 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %12 = load i64, ptr %stack_var_-136, align 8
  %13 = inttoptr i64 %8 to ptr
  store i64 %12, ptr %13, align 16
  %14 = or i64 %8, 8
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %8, 16
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %8, 24
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %8, 32
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %8, 40
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %8, 48
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %8, 56
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %8, 64
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %8, 72
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %8, 80
  %33 = inttoptr i64 %32 to ptr
  %34 = add i64 %8, 88
  %35 = inttoptr i64 %34 to ptr
  %36 = add i64 %8, 96
  %37 = inttoptr i64 %36 to ptr
  %38 = add i64 %8, 99
  %39 = inttoptr i64 %38 to ptr
  store i8 0, ptr %39, align 1
  call void @printLine(ptr %9)
  %40 = call i64 @__readfsqword(i64 40)
  %41 = icmp eq i64 %1, %40
  br i1 %41, label %dec_label_pc_15f56, label %dec_label_pc_15f51

dec_label_pc_15f51:                               ; preds = %dec_label_pc_15e1e
  call void @__stack_chk_fail()
  br label %dec_label_pc_15f56

dec_label_pc_15f56:                               ; preds = %dec_label_pc_15f51, %dec_label_pc_15e1e
  ret void
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6decb:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

