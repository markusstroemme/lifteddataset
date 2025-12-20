@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_bdc9:
  %.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %dataBuffer_-104 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_be12

dec_label_pc_be12:                                ; preds = %dec_label_pc_be12, %dec_label_pc_bdc9
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_be29, label %dec_label_pc_be12

dec_label_pc_be29:                                ; preds = %dec_label_pc_be12
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = call i32 @globalReturnsTrueOrFalse()
  %8 = inttoptr i64 %5 to ptr
  %9 = call ptr @memset(ptr %8, i32 65, i32 49)
  %10 = add i64 %5, 49
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %12 = call i32 @strlen(ptr %6)
  store ptr null, ptr %dataBuffer_-104, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %dec_label_pc_bf3a, label %dec_label_pc_bf10.lr.ph

dec_label_pc_bf10.lr.ph:                          ; preds = %dec_label_pc_be29
  %14 = sext i32 %12 to i64
  %15 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_bf10

dec_label_pc_bf10:                                ; preds = %dec_label_pc_bf10.lr.ph, %dec_label_pc_bf10
  %.reload = load i64, ptr %.reg2mem, align 8
  %16 = add i64 %.reload, %5
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = add i64 %.reload, %15
  %20 = inttoptr i64 %19 to ptr
  store i8 %18, ptr %20, align 1
  %21 = load ptr, ptr %dataBuffer_-104, align 8
  %22 = ptrtoint ptr %21 to i64
  %23 = add i64 %22, 1
  %24 = inttoptr i64 %23 to ptr
  store ptr %24, ptr %dataBuffer_-104, align 8
  %25 = icmp ult i64 %23, %14
  store i64 %23, ptr %.reg2mem, align 8
  br i1 %25, label %dec_label_pc_bf10, label %dec_label_pc_bf3a

dec_label_pc_bf3a:                                ; preds = %dec_label_pc_bf10, %dec_label_pc_be29
  call void @printLine(ptr %6)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_bf5f, label %dec_label_pc_bf5a

dec_label_pc_bf5a:                                ; preds = %dec_label_pc_bf3a
  call void @__stack_chk_fail()
  br label %dec_label_pc_bf5f

dec_label_pc_bf5f:                                ; preds = %dec_label_pc_bf5a, %dec_label_pc_bf3a
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_7a115:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

