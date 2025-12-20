@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_9f014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_9a13:
  %storemerge2.reg2mem = alloca ptr, align 8
  %.in.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_9a5f

dec_label_pc_9a5f:                                ; preds = %dec_label_pc_9a5f, %dec_label_pc_9a13
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_9a76, label %dec_label_pc_9a5f

dec_label_pc_9a76:                                ; preds = %dec_label_pc_9a5f
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_9ae1

dec_label_pc_9ae1:                                ; preds = %dec_label_pc_9ae1, %dec_label_pc_9a76
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_9af8, label %dec_label_pc_9ae1

dec_label_pc_9af8:                                ; preds = %dec_label_pc_9ae1
  %9 = load i32, ptr @global_var_9f014, align 4
  %10 = icmp eq i32 %9, 5
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_9b55, label %dec_label_pc_9b40

dec_label_pc_9b40:                                ; preds = %dec_label_pc_9af8
  %12 = inttoptr i64 %6 to ptr
  %13 = bitcast ptr %stack_var_-152 to ptr
  store i64 %6, ptr %13, align 8
  store i8 0, ptr %12, align 16
  br label %dec_label_pc_9b55

dec_label_pc_9b55:                                ; preds = %dec_label_pc_9b40, %dec_label_pc_9af8
  %14 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %15 = load ptr, ptr %stack_var_-152, align 8
  %16 = ptrtoint ptr %stack_var_-120 to i64
  store ptr %15, ptr %.in.reg2mem, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_9b7c

dec_label_pc_9b7c:                                ; preds = %dec_label_pc_9b55, %dec_label_pc_9b7c
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %.in.reload = load ptr, ptr %.in.reg2mem, align 8
  %17 = ptrtoint ptr %.in.reload to i64
  %18 = ptrtoint ptr %storemerge2.reload to i64
  %19 = add i64 %18, %17
  %20 = add i64 %18, %16
  %21 = inttoptr i64 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = inttoptr i64 %19 to ptr
  store i8 %22, ptr %23, align 1
  %24 = add i64 %18, 1
  %25 = inttoptr i64 %24 to ptr
  %26 = icmp ugt ptr %25, inttoptr (i64 99 to ptr)
  %27 = load ptr, ptr %stack_var_-152, align 8
  store ptr %27, ptr %.in.reg2mem, align 8
  store ptr %25, ptr %storemerge2.reg2mem, align 8
  br i1 %26, label %dec_label_pc_9bb2, label %dec_label_pc_9b7c

dec_label_pc_9bb2:                                ; preds = %dec_label_pc_9b7c
  %28 = ptrtoint ptr %27 to i64
  %29 = add i64 %28, 99
  %30 = inttoptr i64 %29 to ptr
  store i8 0, ptr %30, align 1
  %31 = load ptr, ptr %stack_var_-152, align 8
  call void @printLine(ptr %31)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %1, %32
  br i1 %33, label %dec_label_pc_9be4, label %dec_label_pc_9bdf

dec_label_pc_9bdf:                                ; preds = %dec_label_pc_9bb2
  call void @__stack_chk_fail()
  br label %dec_label_pc_9be4

dec_label_pc_9be4:                                ; preds = %dec_label_pc_9bdf, %dec_label_pc_9bb2
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

