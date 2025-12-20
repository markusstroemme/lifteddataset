@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_15b0e:
  %dataGoodBuffer_-160.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %data_-168 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_15b5b

dec_label_pc_15b5b:                               ; preds = %dec_label_pc_15b5b, %dec_label_pc_15b0e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_15b72, label %dec_label_pc_15b5b

dec_label_pc_15b72:                               ; preds = %dec_label_pc_15b5b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_15be0

dec_label_pc_15be0:                               ; preds = %dec_label_pc_15be0, %dec_label_pc_15b72
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_15bf7, label %dec_label_pc_15be0

dec_label_pc_15bf7:                               ; preds = %dec_label_pc_15be0
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_15c5f, label %dec_label_pc_15c45

dec_label_pc_15c45:                               ; preds = %dec_label_pc_15bf7
  %10 = and i64 %5, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-160.0.reg2mem, align 8
  br label %dec_label_pc_15c77

dec_label_pc_15c5f:                               ; preds = %dec_label_pc_15bf7
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %12 = add i64 %4, %constexpr5
  %13 = and i64 %12, -16
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 16
  store ptr %14, ptr %dataGoodBuffer_-160.0.reg2mem, align 8
  br label %dec_label_pc_15c77

dec_label_pc_15c77:                               ; preds = %dec_label_pc_15c5f, %dec_label_pc_15c45
  %dataGoodBuffer_-160.0.reload = load ptr, ptr %dataGoodBuffer_-160.0.reg2mem, align 8
  %15 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %16 = ptrtoint ptr %dataGoodBuffer_-160.0.reload to i64
  %17 = load i64, ptr %stack_var_-136, align 8
  %18 = bitcast ptr %dataGoodBuffer_-160.0.reload to ptr
  store i64 %17, ptr %18, align 8
  %19 = add i64 %16, 8
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %16, 16
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %16, 24
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %16, 32
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %16, 40
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %16, 48
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %16, 56
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %16, 64
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %16, 72
  %36 = inttoptr i64 %35 to ptr
  %37 = add i64 %16, 80
  %38 = inttoptr i64 %37 to ptr
  %39 = add i64 %16, 88
  %40 = inttoptr i64 %39 to ptr
  %41 = add i64 %16, 96
  %42 = inttoptr i64 %41 to ptr
  %43 = add i64 %16, 99
  %44 = inttoptr i64 %43 to ptr
  store i8 0, ptr %44, align 1
  call void @printLine(ptr nonnull %dataGoodBuffer_-160.0.reload)
  %45 = call i64 @__readfsqword(i64 40)
  %46 = icmp eq i64 %1, %45
  br i1 %46, label %dec_label_pc_15d2f, label %dec_label_pc_15d2a

dec_label_pc_15d2a:                               ; preds = %dec_label_pc_15c77
  call void @__stack_chk_fail()
  br label %dec_label_pc_15d2f

dec_label_pc_15d2f:                               ; preds = %dec_label_pc_15d2a, %dec_label_pc_15c77
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

