@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8cd7:
  %storemerge4.reg2mem = alloca ptr, align 8
  %.in.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_8d23

dec_label_pc_8d23:                                ; preds = %dec_label_pc_8d23, %dec_label_pc_8cd7
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8d3a, label %dec_label_pc_8d23

dec_label_pc_8d3a:                                ; preds = %dec_label_pc_8d23
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_8da5

dec_label_pc_8da5:                                ; preds = %dec_label_pc_8da5, %dec_label_pc_8d3a
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_8dbc, label %dec_label_pc_8da5

dec_label_pc_8dbc:                                ; preds = %dec_label_pc_8da5
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = bitcast ptr %stack_var_-152 to ptr
  store i64 %8, ptr %9, align 8
  %.cast = inttoptr i64 %8 to ptr
  store i8 0, ptr %.cast, align 16
  %10 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %11 = load ptr, ptr %stack_var_-152, align 8
  %12 = ptrtoint ptr %stack_var_-120 to i64
  store ptr %11, ptr %.in.reg2mem, align 8
  store ptr null, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_8e3e

dec_label_pc_8e3e:                                ; preds = %dec_label_pc_8dbc, %dec_label_pc_8e3e
  %storemerge4.reload = load ptr, ptr %storemerge4.reg2mem, align 8
  %.in.reload = load ptr, ptr %.in.reg2mem, align 8
  %13 = ptrtoint ptr %.in.reload to i64
  %14 = ptrtoint ptr %storemerge4.reload to i64
  %15 = add i64 %14, %13
  %16 = add i64 %14, %12
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = inttoptr i64 %15 to ptr
  store i8 %18, ptr %19, align 1
  %20 = add i64 %14, 1
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp ugt ptr %21, inttoptr (i64 99 to ptr)
  %23 = load ptr, ptr %stack_var_-152, align 8
  store ptr %23, ptr %.in.reg2mem, align 8
  store ptr %21, ptr %storemerge4.reg2mem, align 8
  br i1 %22, label %dec_label_pc_8e74, label %dec_label_pc_8e3e

dec_label_pc_8e74:                                ; preds = %dec_label_pc_8e3e
  %24 = ptrtoint ptr %23 to i64
  %25 = add i64 %24, 99
  %26 = inttoptr i64 %25 to ptr
  store i8 0, ptr %26, align 1
  %27 = load ptr, ptr %stack_var_-152, align 8
  call void @printLine(ptr %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %1, %28
  br i1 %29, label %dec_label_pc_8ea6, label %dec_label_pc_8ea1

dec_label_pc_8ea1:                                ; preds = %dec_label_pc_8e74
  call void @__stack_chk_fail()
  br label %dec_label_pc_8ea6

dec_label_pc_8ea6:                                ; preds = %dec_label_pc_8ea1, %dec_label_pc_8e74
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

