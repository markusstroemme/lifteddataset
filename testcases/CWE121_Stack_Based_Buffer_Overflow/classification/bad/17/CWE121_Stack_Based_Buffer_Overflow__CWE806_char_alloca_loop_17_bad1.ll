@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_cfbe:
  %.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-120 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_d007

dec_label_pc_d007:                                ; preds = %dec_label_pc_d007, %dec_label_pc_cfbe
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_d097, label %dec_label_pc_d007

dec_label_pc_d097:                                ; preds = %dec_label_pc_d007
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %5, 99
  %8 = inttoptr i64 %7 to ptr
  %9 = call ptr @memset(ptr %6, i32 65, i32 99)
  store i8 0, ptr %8, align 1
  %10 = inttoptr i64 %5 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_d111, label %dec_label_pc_d0e7.lr.ph

dec_label_pc_d0e7.lr.ph:                          ; preds = %dec_label_pc_d097
  %13 = sext i32 %11 to i64
  %14 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_d0e7

dec_label_pc_d0e7:                                ; preds = %dec_label_pc_d0e7.lr.ph, %dec_label_pc_d0e7
  %.reload = load i64, ptr %.reg2mem, align 8
  %15 = add i64 %.reload, %5
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = add i64 %.reload, %14
  %19 = inttoptr i64 %18 to ptr
  store i8 %17, ptr %19, align 1
  %20 = add nuw i64 %.reload, 1
  %21 = icmp ult i64 %20, %13
  store i64 %20, ptr %.reg2mem, align 8
  br i1 %21, label %dec_label_pc_d0e7, label %dec_label_pc_d111

dec_label_pc_d111:                                ; preds = %dec_label_pc_d0e7, %dec_label_pc_d097
  call void @printLine(ptr %10)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_d136, label %dec_label_pc_d131

dec_label_pc_d131:                                ; preds = %dec_label_pc_d111
  call void @__stack_chk_fail()
  br label %dec_label_pc_d136

dec_label_pc_d136:                                ; preds = %dec_label_pc_d131, %dec_label_pc_d111
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

