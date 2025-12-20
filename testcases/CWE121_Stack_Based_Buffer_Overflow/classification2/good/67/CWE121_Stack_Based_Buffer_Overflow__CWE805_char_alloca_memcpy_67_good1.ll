@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_1c10e:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1c157

dec_label_pc_1c157:                               ; preds = %dec_label_pc_1c157, %dec_label_pc_1c10e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1c16e, label %dec_label_pc_1c157

dec_label_pc_1c16e:                               ; preds = %dec_label_pc_1c157
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1c1d9

dec_label_pc_1c1d9:                               ; preds = %dec_label_pc_1c1d9, %dec_label_pc_1c16e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1c1f0, label %dec_label_pc_1c1d9

dec_label_pc_1c1f0:                               ; preds = %dec_label_pc_1c1d9
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  call void @anon0(i64 %8)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_1c265, label %dec_label_pc_1c260

dec_label_pc_1c260:                               ; preds = %dec_label_pc_1c1f0
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c265

dec_label_pc_1c265:                               ; preds = %dec_label_pc_1c260, %dec_label_pc_1c1f0
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1c36e:
  %stack_var_-136 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %3 = load i64, ptr %stack_var_-136, align 8
  %4 = inttoptr i64 %myStruct to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %myStruct, 8
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %myStruct, 16
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %myStruct, 24
  %10 = inttoptr i64 %9 to ptr
  %11 = add i64 %myStruct, 32
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %myStruct, 40
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %myStruct, 48
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %myStruct, 56
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %myStruct, 64
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %myStruct, 72
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %myStruct, 80
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %myStruct, 88
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %myStruct, 96
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %myStruct, 99
  %30 = inttoptr i64 %29 to ptr
  store i8 0, ptr %30, align 1
  call void @printLine(ptr %0)
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %1, %31
  br i1 %32, label %dec_label_pc_1c45a, label %dec_label_pc_1c455

dec_label_pc_1c455:                               ; preds = %dec_label_pc_1c36e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c45a

dec_label_pc_1c45a:                               ; preds = %dec_label_pc_1c455, %dec_label_pc_1c36e
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

