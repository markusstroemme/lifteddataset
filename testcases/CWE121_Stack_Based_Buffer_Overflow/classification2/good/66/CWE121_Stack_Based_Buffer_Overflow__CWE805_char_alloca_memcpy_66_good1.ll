@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_1bc5b:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %dataArray_-72 = alloca [5 x ptr], align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1bca4

dec_label_pc_1bca4:                               ; preds = %dec_label_pc_1bca4, %dec_label_pc_1bc5b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1bcbb, label %dec_label_pc_1bca4

dec_label_pc_1bcbb:                               ; preds = %dec_label_pc_1bca4
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1bd26

dec_label_pc_1bd26:                               ; preds = %dec_label_pc_1bd26, %dec_label_pc_1bcbb
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1bd3d, label %dec_label_pc_1bd26

dec_label_pc_1bd3d:                               ; preds = %dec_label_pc_1bd26
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  %10 = insertvalue [5 x ptr] undef, ptr %9, 0
  store [5 x ptr] %10, ptr %dataArray_-72, align 8
  %11 = bitcast ptr %dataArray_-72 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %12 to ptr
  %14 = insertvalue [5 x ptr] undef, ptr %13, 0
  store [5 x ptr] %14, ptr %dataArray_-64, align 8
  %15 = bitcast ptr %dataArray_-64 to ptr
  %16 = load i64, ptr %15, align 8
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_1bdb2, label %dec_label_pc_1bdad

dec_label_pc_1bdad:                               ; preds = %dec_label_pc_1bd3d
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bdb2

dec_label_pc_1bdb2:                               ; preds = %dec_label_pc_1bdad, %dec_label_pc_1bd3d
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1bebf:
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %6 = load i64, ptr %stack_var_-136, align 8
  %7 = inttoptr i64 %4 to ptr
  store i64 %6, ptr %7, align 8
  %8 = add i64 %4, 8
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %4, 16
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %4, 24
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %4, 32
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %4, 40
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %4, 48
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %4, 56
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %4, 64
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %4, 72
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %4, 80
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %4, 88
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %4, 96
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %4, 99
  %33 = inttoptr i64 %32 to ptr
  store i8 0, ptr %33, align 1
  %34 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %34)
  %35 = call i64 @__readfsqword(i64 40)
  %36 = icmp eq i64 %0, %35
  br i1 %36, label %dec_label_pc_1bfaf, label %dec_label_pc_1bfaa

dec_label_pc_1bfaa:                               ; preds = %dec_label_pc_1bebf
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bfaf

dec_label_pc_1bfaf:                               ; preds = %dec_label_pc_1bfaa, %dec_label_pc_1bebf
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

