@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_b68a:
  %storemerge4.reg2mem = alloca ptr, align 8
  %.in.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_b6d6

dec_label_pc_b6d6:                                ; preds = %dec_label_pc_b6d6, %dec_label_pc_b68a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_b6ed, label %dec_label_pc_b6d6

dec_label_pc_b6ed:                                ; preds = %dec_label_pc_b6d6
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_b758

dec_label_pc_b758:                                ; preds = %dec_label_pc_b758, %dec_label_pc_b6ed
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_b76f, label %dec_label_pc_b758

dec_label_pc_b76f:                                ; preds = %dec_label_pc_b758
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_b7d1, label %dec_label_pc_b7ba

dec_label_pc_b7ba:                                ; preds = %dec_label_pc_b76f
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %stack_var_-152 to ptr
  store i64 %6, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_b7e6

dec_label_pc_b7d1:                                ; preds = %dec_label_pc_b76f
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %13 = add i64 %4, %constexpr5
  %14 = and i64 %13, -16
  %15 = inttoptr i64 %14 to ptr
  %16 = bitcast ptr %stack_var_-152 to ptr
  store i64 %14, ptr %16, align 8
  store i8 0, ptr %15, align 16
  br label %dec_label_pc_b7e6

dec_label_pc_b7e6:                                ; preds = %dec_label_pc_b7d1, %dec_label_pc_b7ba
  %17 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %18 = load ptr, ptr %stack_var_-152, align 8
  %19 = ptrtoint ptr %stack_var_-120 to i64
  store ptr %18, ptr %.in.reg2mem, align 8
  store ptr null, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_b80d

dec_label_pc_b80d:                                ; preds = %dec_label_pc_b7e6, %dec_label_pc_b80d
  %storemerge4.reload = load ptr, ptr %storemerge4.reg2mem, align 8
  %.in.reload = load ptr, ptr %.in.reg2mem, align 8
  %20 = ptrtoint ptr %.in.reload to i64
  %21 = ptrtoint ptr %storemerge4.reload to i64
  %22 = add i64 %21, %20
  %23 = add i64 %21, %19
  %24 = inttoptr i64 %23 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = inttoptr i64 %22 to ptr
  store i8 %25, ptr %26, align 1
  %27 = add i64 %21, 1
  %28 = inttoptr i64 %27 to ptr
  %29 = icmp ugt ptr %28, inttoptr (i64 99 to ptr)
  %30 = load ptr, ptr %stack_var_-152, align 8
  store ptr %30, ptr %.in.reg2mem, align 8
  store ptr %28, ptr %storemerge4.reg2mem, align 8
  br i1 %29, label %dec_label_pc_b843, label %dec_label_pc_b80d

dec_label_pc_b843:                                ; preds = %dec_label_pc_b80d
  %31 = ptrtoint ptr %30 to i64
  %32 = add i64 %31, 99
  %33 = inttoptr i64 %32 to ptr
  store i8 0, ptr %33, align 1
  %34 = load ptr, ptr %stack_var_-152, align 8
  call void @printLine(ptr %34)
  %35 = call i64 @__readfsqword(i64 40)
  %36 = icmp eq i64 %1, %35
  br i1 %36, label %dec_label_pc_b875, label %dec_label_pc_b870

dec_label_pc_b870:                                ; preds = %dec_label_pc_b843
  call void @__stack_chk_fail()
  br label %dec_label_pc_b875

dec_label_pc_b875:                                ; preds = %dec_label_pc_b870, %dec_label_pc_b843
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

