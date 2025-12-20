@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_b962:
  %.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_b9ab

dec_label_pc_b9ab:                                ; preds = %dec_label_pc_b9ab, %dec_label_pc_b962
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_b9c2, label %dec_label_pc_b9ab

dec_label_pc_b9c2:                                ; preds = %dec_label_pc_b9ab
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_ba2d

dec_label_pc_ba2d:                                ; preds = %dec_label_pc_ba2d, %dec_label_pc_b9c2
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_ba44, label %dec_label_pc_ba2d

dec_label_pc_ba44:                                ; preds = %dec_label_pc_ba2d
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %10 = bitcast ptr %stack_var_-27 to ptr
  %11 = call i32 @strlen(ptr nonnull %10)
  %12 = sext i32 %11 to i64
  store ptr null, ptr %dataBadBuffer_-72, align 8
  %13 = add nsw i64 %12, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %dec_label_pc_baf1, label %dec_label_pc_bac3.lr.ph

dec_label_pc_bac3.lr.ph:                          ; preds = %dec_label_pc_ba44
  %15 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_bac3

dec_label_pc_bac3:                                ; preds = %dec_label_pc_bac3.lr.ph, %dec_label_pc_bac3
  %.reload = load i64, ptr %.reg2mem, align 8
  %16 = add i64 %.reload, %8
  %17 = add i64 %.reload, %15
  %18 = inttoptr i64 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = inttoptr i64 %16 to ptr
  store i8 %19, ptr %20, align 1
  %21 = load ptr, ptr %dataBadBuffer_-72, align 8
  %22 = ptrtoint ptr %21 to i64
  %23 = add i64 %22, 1
  %24 = inttoptr i64 %23 to ptr
  store ptr %24, ptr %dataBadBuffer_-72, align 8
  %25 = icmp ugt i64 %13, %23
  store i64 %23, ptr %.reg2mem, align 8
  br i1 %25, label %dec_label_pc_bac3, label %dec_label_pc_baf1

dec_label_pc_baf1:                                ; preds = %dec_label_pc_bac3, %dec_label_pc_ba44
  call void @printLine(ptr %9)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_bb12, label %dec_label_pc_bb0d

dec_label_pc_bb0d:                                ; preds = %dec_label_pc_baf1
  call void @__stack_chk_fail()
  br label %dec_label_pc_bb12

dec_label_pc_bb12:                                ; preds = %dec_label_pc_bb0d, %dec_label_pc_baf1
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

