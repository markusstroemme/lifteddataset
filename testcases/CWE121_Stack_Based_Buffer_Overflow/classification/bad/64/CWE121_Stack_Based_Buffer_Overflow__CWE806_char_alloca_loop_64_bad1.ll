@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10c75:
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBuffer_-32 = alloca ptr, align 8
  %data_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_10cbe

dec_label_pc_10cbe:                               ; preds = %dec_label_pc_10cbe, %dec_label_pc_10c75
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_10cd5, label %dec_label_pc_10cbe

dec_label_pc_10cd5:                               ; preds = %dec_label_pc_10cbe
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %dataBuffer_-32, align 8
  %7 = inttoptr i64 %5 to ptr
  %8 = call ptr @memset(ptr %7, i32 65, i32 99)
  %9 = add i64 %5, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  %11 = bitcast ptr %dataBuffer_-32 to ptr
  call void @anon1(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_10d5c, label %dec_label_pc_10d57

dec_label_pc_10d57:                               ; preds = %dec_label_pc_10cd5
  call void @__stack_chk_fail()
  br label %dec_label_pc_10d5c

dec_label_pc_10d5c:                               ; preds = %dec_label_pc_10d57, %dec_label_pc_10cd5
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_10e5c:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %dataVoidPtr)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_10f08, label %dec_label_pc_10ede.lr.ph

dec_label_pc_10ede.lr.ph:                         ; preds = %dec_label_pc_10e5c
  %3 = sext i32 %1 to i64
  %4 = ptrtoint ptr %dataVoidPtr to i64
  %5 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_10ede

dec_label_pc_10ede:                               ; preds = %dec_label_pc_10ede.lr.ph, %dec_label_pc_10ede
  %.reload = load i64, ptr %.reg2mem, align 8
  %6 = add i64 %.reload, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = add i64 %.reload, %5
  %10 = inttoptr i64 %9 to ptr
  store i8 %8, ptr %10, align 1
  %11 = add nuw i64 %.reload, 1
  %12 = icmp ult i64 %11, %3
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %12, label %dec_label_pc_10ede, label %dec_label_pc_10f08

dec_label_pc_10f08:                               ; preds = %dec_label_pc_10ede, %dec_label_pc_10e5c
  call void @printLine(ptr %dataVoidPtr)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_10f2d, label %dec_label_pc_10f28

dec_label_pc_10f28:                               ; preds = %dec_label_pc_10f08
  call void @__stack_chk_fail()
  br label %dec_label_pc_10f2d

dec_label_pc_10f2d:                               ; preds = %dec_label_pc_10f28, %dec_label_pc_10f08
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

