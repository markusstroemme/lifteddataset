@global_var_fff = external global ptr
@global_var_90950 = external constant [21 x i8]
@global_var_1000 = external global i32
@global_var_b4338 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_b490:
  %.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %dataBuffer_-104 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_b4d9

dec_label_pc_b4d9:                                ; preds = %dec_label_pc_b4d9, %dec_label_pc_b490
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_b4f0, label %dec_label_pc_b4d9

dec_label_pc_b4f0:                                ; preds = %dec_label_pc_b4d9
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = load i32, ptr @global_var_b4338, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %dec_label_pc_b550, label %dec_label_pc_b53f

dec_label_pc_b53f:                                ; preds = %dec_label_pc_b4f0
  call void @printLine(ptr @global_var_90950)
  br label %dec_label_pc_b571

dec_label_pc_b550:                                ; preds = %dec_label_pc_b4f0
  %8 = inttoptr i64 %5 to ptr
  %9 = call ptr @memset(ptr %8, i32 65, i32 49)
  %10 = add i64 %5, 49
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  br label %dec_label_pc_b571

dec_label_pc_b571:                                ; preds = %dec_label_pc_b550, %dec_label_pc_b53f
  %12 = inttoptr i64 %5 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %13 = call i32 @strlen(ptr %12)
  store ptr null, ptr %dataBuffer_-104, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_b5eb, label %dec_label_pc_b5c1.lr.ph

dec_label_pc_b5c1.lr.ph:                          ; preds = %dec_label_pc_b571
  %15 = sext i32 %13 to i64
  %16 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_b5c1

dec_label_pc_b5c1:                                ; preds = %dec_label_pc_b5c1.lr.ph, %dec_label_pc_b5c1
  %.reload = load i64, ptr %.reg2mem, align 8
  %17 = add i64 %.reload, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = add i64 %.reload, %16
  %21 = inttoptr i64 %20 to ptr
  store i8 %19, ptr %21, align 1
  %22 = load ptr, ptr %dataBuffer_-104, align 8
  %23 = ptrtoint ptr %22 to i64
  %24 = add i64 %23, 1
  %25 = inttoptr i64 %24 to ptr
  store ptr %25, ptr %dataBuffer_-104, align 8
  %26 = icmp ult i64 %24, %15
  store i64 %24, ptr %.reg2mem, align 8
  br i1 %26, label %dec_label_pc_b5c1, label %dec_label_pc_b5eb

dec_label_pc_b5eb:                                ; preds = %dec_label_pc_b5c1, %dec_label_pc_b571
  call void @printLine(ptr %12)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %1, %27
  br i1 %28, label %dec_label_pc_b610, label %dec_label_pc_b60b

dec_label_pc_b60b:                                ; preds = %dec_label_pc_b5eb
  call void @__stack_chk_fail()
  br label %dec_label_pc_b610

dec_label_pc_b610:                                ; preds = %dec_label_pc_b60b, %dec_label_pc_b5eb
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

