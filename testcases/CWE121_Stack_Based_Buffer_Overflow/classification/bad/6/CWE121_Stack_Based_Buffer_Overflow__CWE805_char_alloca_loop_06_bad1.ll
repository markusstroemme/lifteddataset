@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_946d:
  %storemerge2.reg2mem = alloca ptr, align 8
  %.in.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_94b9

dec_label_pc_94b9:                                ; preds = %dec_label_pc_94b9, %dec_label_pc_946d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_94d0, label %dec_label_pc_94b9

dec_label_pc_94d0:                                ; preds = %dec_label_pc_94b9
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_953b

dec_label_pc_953b:                                ; preds = %dec_label_pc_953b, %dec_label_pc_94d0
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_9552, label %dec_label_pc_953b

dec_label_pc_9552:                                ; preds = %dec_label_pc_953b
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %stack_var_-152 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %12 = load ptr, ptr %stack_var_-152, align 8
  %13 = ptrtoint ptr %stack_var_-120 to i64
  store ptr %12, ptr %.in.reg2mem, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_95d5

dec_label_pc_95d5:                                ; preds = %dec_label_pc_9552, %dec_label_pc_95d5
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %.in.reload = load ptr, ptr %.in.reg2mem, align 8
  %14 = ptrtoint ptr %.in.reload to i64
  %15 = ptrtoint ptr %storemerge2.reload to i64
  %16 = add i64 %15, %14
  %17 = add i64 %15, %13
  %18 = inttoptr i64 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = inttoptr i64 %16 to ptr
  store i8 %19, ptr %20, align 1
  %21 = add i64 %15, 1
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  %24 = load ptr, ptr %stack_var_-152, align 8
  store ptr %24, ptr %.in.reg2mem, align 8
  store ptr %22, ptr %storemerge2.reg2mem, align 8
  br i1 %23, label %dec_label_pc_960b, label %dec_label_pc_95d5

dec_label_pc_960b:                                ; preds = %dec_label_pc_95d5
  %25 = ptrtoint ptr %24 to i64
  %26 = add i64 %25, 99
  %27 = inttoptr i64 %26 to ptr
  store i8 0, ptr %27, align 1
  %28 = load ptr, ptr %stack_var_-152, align 8
  call void @printLine(ptr %28)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %1, %29
  br i1 %30, label %dec_label_pc_963d, label %dec_label_pc_9638

dec_label_pc_9638:                                ; preds = %dec_label_pc_960b
  call void @__stack_chk_fail()
  br label %dec_label_pc_963d

dec_label_pc_963d:                                ; preds = %dec_label_pc_9638, %dec_label_pc_960b
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

