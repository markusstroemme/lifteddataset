@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_bc31:
  %.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %dataBuffer_-104 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_bc7a

dec_label_pc_bc7a:                                ; preds = %dec_label_pc_bc7a, %dec_label_pc_bc31
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_bc91, label %dec_label_pc_bc7a

dec_label_pc_bc91:                                ; preds = %dec_label_pc_bc7a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = call i32 @globalReturnsTrueOrFalse()
  %7 = icmp eq i32 %6, 0
  %8 = inttoptr i64 %5 to ptr
  br i1 %7, label %dec_label_pc_bd07, label %dec_label_pc_bce4

dec_label_pc_bce4:                                ; preds = %dec_label_pc_bc91
  %9 = call ptr @memset(ptr %8, i32 65, i32 99)
  %10 = add i64 %5, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  br label %dec_label_pc_bd28

dec_label_pc_bd07:                                ; preds = %dec_label_pc_bc91
  %12 = call ptr @memset(ptr %8, i32 65, i32 49)
  %13 = add i64 %5, 49
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  br label %dec_label_pc_bd28

dec_label_pc_bd28:                                ; preds = %dec_label_pc_bd07, %dec_label_pc_bce4
  %15 = inttoptr i64 %5 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %16 = call i32 @strlen(ptr %15)
  store ptr null, ptr %dataBuffer_-104, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %dec_label_pc_bda2, label %dec_label_pc_bd78.lr.ph

dec_label_pc_bd78.lr.ph:                          ; preds = %dec_label_pc_bd28
  %18 = sext i32 %16 to i64
  %19 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_bd78

dec_label_pc_bd78:                                ; preds = %dec_label_pc_bd78.lr.ph, %dec_label_pc_bd78
  %.reload = load i64, ptr %.reg2mem, align 8
  %20 = add i64 %.reload, %5
  %21 = inttoptr i64 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = add i64 %.reload, %19
  %24 = inttoptr i64 %23 to ptr
  store i8 %22, ptr %24, align 1
  %25 = load ptr, ptr %dataBuffer_-104, align 8
  %26 = ptrtoint ptr %25 to i64
  %27 = add i64 %26, 1
  %28 = inttoptr i64 %27 to ptr
  store ptr %28, ptr %dataBuffer_-104, align 8
  %29 = icmp ult i64 %27, %18
  store i64 %27, ptr %.reg2mem, align 8
  br i1 %29, label %dec_label_pc_bd78, label %dec_label_pc_bda2

dec_label_pc_bda2:                                ; preds = %dec_label_pc_bd78, %dec_label_pc_bd28
  call void @printLine(ptr %15)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %1, %30
  br i1 %31, label %dec_label_pc_bdc7, label %dec_label_pc_bdc2

dec_label_pc_bdc2:                                ; preds = %dec_label_pc_bda2
  call void @__stack_chk_fail()
  br label %dec_label_pc_bdc7

dec_label_pc_bdc7:                                ; preds = %dec_label_pc_bdc2, %dec_label_pc_bda2
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

