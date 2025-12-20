@global_var_fff = external global ptr
@global_var_1000 = external global i32
@global_var_b4014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a569:
  %.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %dataBuffer_-104 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_a5b2

dec_label_pc_a5b2:                                ; preds = %dec_label_pc_a5b2, %dec_label_pc_a569
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_a5c9, label %dec_label_pc_a5b2

dec_label_pc_a5c9:                                ; preds = %dec_label_pc_a5b2
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = load i32, ptr @global_var_b4014, align 4
  %7 = icmp eq i32 %6, 5
  %8 = icmp eq i1 %7, false
  br i1 %8, label %dec_label_pc_a63a, label %dec_label_pc_a619

dec_label_pc_a619:                                ; preds = %dec_label_pc_a5c9
  %9 = inttoptr i64 %5 to ptr
  %10 = call ptr @memset(ptr %9, i32 65, i32 99)
  %11 = add i64 %5, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  br label %dec_label_pc_a63a

dec_label_pc_a63a:                                ; preds = %dec_label_pc_a619, %dec_label_pc_a5c9
  %13 = inttoptr i64 %5 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %14 = call i32 @strlen(ptr %13)
  store ptr null, ptr %dataBuffer_-104, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %dec_label_pc_a6b4, label %dec_label_pc_a68a.lr.ph

dec_label_pc_a68a.lr.ph:                          ; preds = %dec_label_pc_a63a
  %16 = sext i32 %14 to i64
  %17 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_a68a

dec_label_pc_a68a:                                ; preds = %dec_label_pc_a68a.lr.ph, %dec_label_pc_a68a
  %.reload = load i64, ptr %.reg2mem, align 8
  %18 = add i64 %.reload, %5
  %19 = inttoptr i64 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = add i64 %.reload, %17
  %22 = inttoptr i64 %21 to ptr
  store i8 %20, ptr %22, align 1
  %23 = load ptr, ptr %dataBuffer_-104, align 8
  %24 = ptrtoint ptr %23 to i64
  %25 = add i64 %24, 1
  %26 = inttoptr i64 %25 to ptr
  store ptr %26, ptr %dataBuffer_-104, align 8
  %27 = icmp ult i64 %25, %16
  store i64 %25, ptr %.reg2mem, align 8
  br i1 %27, label %dec_label_pc_a68a, label %dec_label_pc_a6b4

dec_label_pc_a6b4:                                ; preds = %dec_label_pc_a68a, %dec_label_pc_a63a
  call void @printLine(ptr %13)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_a6d9, label %dec_label_pc_a6d4

dec_label_pc_a6d4:                                ; preds = %dec_label_pc_a6b4
  call void @__stack_chk_fail()
  br label %dec_label_pc_a6d9

dec_label_pc_a6d9:                                ; preds = %dec_label_pc_a6d4, %dec_label_pc_a6b4
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

