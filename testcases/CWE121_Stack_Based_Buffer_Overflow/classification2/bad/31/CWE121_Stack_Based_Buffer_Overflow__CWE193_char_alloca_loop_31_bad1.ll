@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_c5c2:
  %.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_c60b

dec_label_pc_c60b:                                ; preds = %dec_label_pc_c60b, %dec_label_pc_c5c2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_c622, label %dec_label_pc_c60b

dec_label_pc_c622:                                ; preds = %dec_label_pc_c60b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_c68d

dec_label_pc_c68d:                                ; preds = %dec_label_pc_c68d, %dec_label_pc_c622
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_c6a4, label %dec_label_pc_c68d

dec_label_pc_c6a4:                                ; preds = %dec_label_pc_c68d
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %10 = bitcast ptr %stack_var_-27 to ptr
  %11 = call i32 @strlen(ptr nonnull %10)
  %12 = sext i32 %11 to i64
  store ptr null, ptr %dataBadBuffer_-88, align 8
  %13 = add nsw i64 %12, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %dec_label_pc_c760, label %dec_label_pc_c732.lr.ph

dec_label_pc_c732.lr.ph:                          ; preds = %dec_label_pc_c6a4
  %15 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_c732

dec_label_pc_c732:                                ; preds = %dec_label_pc_c732.lr.ph, %dec_label_pc_c732
  %.reload = load i64, ptr %.reg2mem, align 8
  %16 = add i64 %.reload, %8
  %17 = add i64 %.reload, %15
  %18 = inttoptr i64 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = inttoptr i64 %16 to ptr
  store i8 %19, ptr %20, align 1
  %21 = load ptr, ptr %dataBadBuffer_-88, align 8
  %22 = ptrtoint ptr %21 to i64
  %23 = add i64 %22, 1
  %24 = inttoptr i64 %23 to ptr
  store ptr %24, ptr %dataBadBuffer_-88, align 8
  %25 = icmp ugt i64 %13, %23
  store i64 %23, ptr %.reg2mem, align 8
  br i1 %25, label %dec_label_pc_c732, label %dec_label_pc_c760

dec_label_pc_c760:                                ; preds = %dec_label_pc_c732, %dec_label_pc_c6a4
  call void @printLine(ptr %9)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_c781, label %dec_label_pc_c77c

dec_label_pc_c77c:                                ; preds = %dec_label_pc_c760
  call void @__stack_chk_fail()
  br label %dec_label_pc_c781

dec_label_pc_c781:                                ; preds = %dec_label_pc_c77c, %dec_label_pc_c760
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

