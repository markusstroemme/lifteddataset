@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14c44:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %data_-168 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_14c91

dec_label_pc_14c91:                               ; preds = %dec_label_pc_14c91, %dec_label_pc_14c44
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_14ca8, label %dec_label_pc_14c91

dec_label_pc_14ca8:                               ; preds = %dec_label_pc_14c91
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_14d16

dec_label_pc_14d16:                               ; preds = %dec_label_pc_14d16, %dec_label_pc_14ca8
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_14d2d, label %dec_label_pc_14d16

dec_label_pc_14d2d:                               ; preds = %dec_label_pc_14d16
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  %10 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %11 = load i64, ptr %stack_var_-136, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 16
  %13 = or i64 %8, 8
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %8, 16
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %8, 24
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %8, 32
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %8, 40
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %8, 48
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %8, 56
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %8, 64
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %8, 72
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %8, 80
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %8, 88
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %8, 96
  %36 = inttoptr i64 %35 to ptr
  %37 = add i64 %8, 99
  %38 = inttoptr i64 %37 to ptr
  store i8 0, ptr %38, align 1
  call void @printLine(ptr %9)
  %39 = call i64 @__readfsqword(i64 40)
  %40 = icmp eq i64 %1, %39
  br i1 %40, label %dec_label_pc_14e47, label %dec_label_pc_14e42

dec_label_pc_14e42:                               ; preds = %dec_label_pc_14d2d
  call void @__stack_chk_fail()
  br label %dec_label_pc_14e47

dec_label_pc_14e47:                               ; preds = %dec_label_pc_14e42, %dec_label_pc_14d2d
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

