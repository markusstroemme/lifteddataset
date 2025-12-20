@global_var_fff = external global ptr
@global_var_909a4 = external constant [21 x i8]
@global_var_1000 = external global i32
@global_var_b4084 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_d74d:
  %0 = load i32, ptr @global_var_b4084, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d778, label %dec_label_pc_d767

dec_label_pc_d767:                                ; preds = %dec_label_pc_d74d
  call void @printLine(ptr @global_var_909a4)
  br label %dec_label_pc_d799

dec_label_pc_d778:                                ; preds = %dec_label_pc_d74d
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_d799

dec_label_pc_d799:                                ; preds = %dec_label_pc_d778, %dec_label_pc_d767
  ret ptr %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_d79f:
  %.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %dataBuffer_-104 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_d7e8

dec_label_pc_d7e8:                                ; preds = %dec_label_pc_d7e8, %dec_label_pc_d79f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_d7ff, label %dec_label_pc_d7e8

dec_label_pc_d7ff:                                ; preds = %dec_label_pc_d7e8
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr @global_var_b4084, align 4
  %7 = call ptr @anon0(ptr %6)
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %7)
  store ptr null, ptr %dataBuffer_-104, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_d8d8, label %dec_label_pc_d8ae.lr.ph

dec_label_pc_d8ae.lr.ph:                          ; preds = %dec_label_pc_d7ff
  %10 = sext i32 %8 to i64
  %11 = ptrtoint ptr %7 to i64
  %12 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_d8ae

dec_label_pc_d8ae:                                ; preds = %dec_label_pc_d8ae.lr.ph, %dec_label_pc_d8ae
  %.reload = load i64, ptr %.reg2mem, align 8
  %13 = add i64 %.reload, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = add i64 %.reload, %12
  %17 = inttoptr i64 %16 to ptr
  store i8 %15, ptr %17, align 1
  %18 = load ptr, ptr %dataBuffer_-104, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = add i64 %19, 1
  %21 = inttoptr i64 %20 to ptr
  store ptr %21, ptr %dataBuffer_-104, align 8
  %22 = icmp ult i64 %20, %10
  store i64 %20, ptr %.reg2mem, align 8
  br i1 %22, label %dec_label_pc_d8ae, label %dec_label_pc_d8d8

dec_label_pc_d8d8:                                ; preds = %dec_label_pc_d8ae, %dec_label_pc_d7ff
  call void @printLine(ptr %7)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %1, %23
  br i1 %24, label %dec_label_pc_d8fd, label %dec_label_pc_d8f8

dec_label_pc_d8f8:                                ; preds = %dec_label_pc_d8d8
  call void @__stack_chk_fail()
  br label %dec_label_pc_d8fd

dec_label_pc_d8fd:                                ; preds = %dec_label_pc_d8f8, %dec_label_pc_d8d8
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

