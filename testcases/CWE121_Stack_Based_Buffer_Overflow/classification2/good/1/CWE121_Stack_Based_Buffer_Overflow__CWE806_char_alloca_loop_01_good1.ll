@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8dbf:
  %.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %dataBuffer_-104 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_8e08

dec_label_pc_8e08:                                ; preds = %dec_label_pc_8e08, %dec_label_pc_8dbf
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8e1f, label %dec_label_pc_8e08

dec_label_pc_8e1f:                                ; preds = %dec_label_pc_8e08
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = inttoptr i64 %5 to ptr
  %8 = call ptr @memset(ptr %7, i32 65, i32 49)
  %9 = add i64 %5, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %6)
  store ptr null, ptr %dataBuffer_-104, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_8eff, label %dec_label_pc_8ed5.lr.ph

dec_label_pc_8ed5.lr.ph:                          ; preds = %dec_label_pc_8e1f
  %13 = sext i32 %11 to i64
  %14 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_8ed5

dec_label_pc_8ed5:                                ; preds = %dec_label_pc_8ed5.lr.ph, %dec_label_pc_8ed5
  %.reload = load i64, ptr %.reg2mem, align 8
  %15 = add i64 %.reload, %5
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = add i64 %.reload, %14
  %19 = inttoptr i64 %18 to ptr
  store i8 %17, ptr %19, align 1
  %20 = load ptr, ptr %dataBuffer_-104, align 8
  %21 = ptrtoint ptr %20 to i64
  %22 = add i64 %21, 1
  %23 = inttoptr i64 %22 to ptr
  store ptr %23, ptr %dataBuffer_-104, align 8
  %24 = icmp ult i64 %22, %13
  store i64 %22, ptr %.reg2mem, align 8
  br i1 %24, label %dec_label_pc_8ed5, label %dec_label_pc_8eff

dec_label_pc_8eff:                                ; preds = %dec_label_pc_8ed5, %dec_label_pc_8e1f
  call void @printLine(ptr %6)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  br i1 %26, label %dec_label_pc_8f24, label %dec_label_pc_8f1f

dec_label_pc_8f1f:                                ; preds = %dec_label_pc_8eff
  call void @__stack_chk_fail()
  br label %dec_label_pc_8f24

dec_label_pc_8f24:                                ; preds = %dec_label_pc_8f1f, %dec_label_pc_8eff
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

