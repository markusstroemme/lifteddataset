@global_var_1000 = external global ptr
@global_var_81035 = external constant [21 x i8]
@global_var_fff = external global i32
@global_var_9f01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_13d68:
  %dataGoodBuffer_-160.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %data_-168 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_13db5

dec_label_pc_13db5:                               ; preds = %dec_label_pc_13db5, %dec_label_pc_13d68
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_13dcc, label %dec_label_pc_13db5

dec_label_pc_13dcc:                               ; preds = %dec_label_pc_13db5
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_13e3a

dec_label_pc_13e3a:                               ; preds = %dec_label_pc_13e3a, %dec_label_pc_13dcc
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_13e51, label %dec_label_pc_13e3a

dec_label_pc_13e51:                               ; preds = %dec_label_pc_13e3a
  %7 = load i32, ptr @global_var_9f01c, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %dec_label_pc_13ead, label %dec_label_pc_13e9c

dec_label_pc_13e9c:                               ; preds = %dec_label_pc_13e51
  call void @printLine(ptr @global_var_81035)
  br label %dec_label_pc_13ec5

dec_label_pc_13ead:                               ; preds = %dec_label_pc_13e51
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-160.0.reg2mem, align 8
  br label %dec_label_pc_13ec5

dec_label_pc_13ec5:                               ; preds = %dec_label_pc_13ead, %dec_label_pc_13e9c
  %dataGoodBuffer_-160.0.reload = load ptr, ptr %dataGoodBuffer_-160.0.reg2mem, align 8
  %12 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %13 = ptrtoint ptr %dataGoodBuffer_-160.0.reload to i64
  %14 = load i64, ptr %stack_var_-136, align 8
  %15 = bitcast ptr %dataGoodBuffer_-160.0.reload to ptr
  store i64 %14, ptr %15, align 8
  %16 = add i64 %13, 8
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %13, 16
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %13, 24
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %13, 32
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %13, 40
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %13, 48
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %13, 56
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %13, 64
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %13, 72
  %33 = inttoptr i64 %32 to ptr
  %34 = add i64 %13, 80
  %35 = inttoptr i64 %34 to ptr
  %36 = add i64 %13, 88
  %37 = inttoptr i64 %36 to ptr
  %38 = add i64 %13, 96
  %39 = inttoptr i64 %38 to ptr
  %40 = add i64 %13, 99
  %41 = inttoptr i64 %40 to ptr
  store i8 0, ptr %41, align 1
  call void @printLine(ptr %dataGoodBuffer_-160.0.reload)
  %42 = call i64 @__readfsqword(i64 40)
  %43 = icmp eq i64 %1, %42
  br i1 %43, label %dec_label_pc_13f7d, label %dec_label_pc_13f78

dec_label_pc_13f78:                               ; preds = %dec_label_pc_13ec5
  call void @__stack_chk_fail()
  br label %dec_label_pc_13f7d

dec_label_pc_13f7d:                               ; preds = %dec_label_pc_13f78, %dec_label_pc_13ec5
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

