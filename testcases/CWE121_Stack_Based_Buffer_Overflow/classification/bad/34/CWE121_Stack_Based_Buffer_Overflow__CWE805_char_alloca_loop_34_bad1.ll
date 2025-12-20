@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_de15:
  %storemerge3.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %stack_var_-168 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_de61

dec_label_pc_de61:                                ; preds = %dec_label_pc_de61, %dec_label_pc_de15
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_de78, label %dec_label_pc_de61

dec_label_pc_de78:                                ; preds = %dec_label_pc_de61
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_dee6

dec_label_pc_dee6:                                ; preds = %dec_label_pc_dee6, %dec_label_pc_de78
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_defd, label %dec_label_pc_dee6

dec_label_pc_defd:                                ; preds = %dec_label_pc_dee6
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  store ptr %9, ptr %stack_var_-168, align 8
  %10 = bitcast ptr %stack_var_-128 to ptr
  store i64 %8, ptr %10, align 8
  %11 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %12 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %8, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_df8c

dec_label_pc_df8c:                                ; preds = %dec_label_pc_defd, %dec_label_pc_df8c
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %13 = ptrtoint ptr %storemerge3.reload to i64
  %14 = add i64 %.reload, %13
  %15 = add i64 %13, %12
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = inttoptr i64 %14 to ptr
  store i8 %17, ptr %18, align 1
  %19 = add i64 %13, 1
  %20 = inttoptr i64 %19 to ptr
  %21 = icmp ugt ptr %20, inttoptr (i64 99 to ptr)
  %22 = load ptr, ptr %stack_var_-128, align 8
  %23 = ptrtoint ptr %22 to i64
  store i64 %23, ptr %.reg2mem, align 8
  store ptr %20, ptr %storemerge3.reg2mem, align 8
  br i1 %21, label %dec_label_pc_dfbf, label %dec_label_pc_df8c

dec_label_pc_dfbf:                                ; preds = %dec_label_pc_df8c
  %24 = add i64 %23, 99
  %25 = inttoptr i64 %24 to ptr
  store i8 0, ptr %25, align 1
  %26 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %1, %27
  br i1 %28, label %dec_label_pc_dfeb, label %dec_label_pc_dfe6

dec_label_pc_dfe6:                                ; preds = %dec_label_pc_dfbf
  call void @__stack_chk_fail()
  br label %dec_label_pc_dfeb

dec_label_pc_dfeb:                                ; preds = %dec_label_pc_dfe6, %dec_label_pc_dfbf
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

