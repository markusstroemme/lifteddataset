@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_9f074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_165bf:
  %dataGoodBuffer_-160.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %data_-168 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1660c

dec_label_pc_1660c:                               ; preds = %dec_label_pc_1660c, %dec_label_pc_165bf
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_16623, label %dec_label_pc_1660c

dec_label_pc_16623:                               ; preds = %dec_label_pc_1660c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_16691

dec_label_pc_16691:                               ; preds = %dec_label_pc_16691, %dec_label_pc_16623
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_166a8, label %dec_label_pc_16691

dec_label_pc_166a8:                               ; preds = %dec_label_pc_16691
  %8 = load i32, ptr @global_var_9f074, align 4
  %9 = icmp eq i32 %8, 5
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_1670b, label %dec_label_pc_166f3

dec_label_pc_166f3:                               ; preds = %dec_label_pc_166a8
  %11 = and i64 %5, -16
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 16
  store ptr %12, ptr %dataGoodBuffer_-160.0.reg2mem, align 8
  br label %dec_label_pc_1670b

dec_label_pc_1670b:                               ; preds = %dec_label_pc_166f3, %dec_label_pc_166a8
  %dataGoodBuffer_-160.0.reload = load ptr, ptr %dataGoodBuffer_-160.0.reg2mem, align 8
  %13 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %14 = ptrtoint ptr %dataGoodBuffer_-160.0.reload to i64
  %15 = load i64, ptr %stack_var_-136, align 8
  %16 = bitcast ptr %dataGoodBuffer_-160.0.reload to ptr
  store i64 %15, ptr %16, align 8
  %17 = add i64 %14, 8
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %14, 16
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %14, 24
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %14, 32
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %14, 40
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %14, 48
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %14, 56
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %14, 64
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %14, 72
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %14, 80
  %36 = inttoptr i64 %35 to ptr
  %37 = add i64 %14, 88
  %38 = inttoptr i64 %37 to ptr
  %39 = add i64 %14, 96
  %40 = inttoptr i64 %39 to ptr
  %41 = add i64 %14, 99
  %42 = inttoptr i64 %41 to ptr
  store i8 0, ptr %42, align 1
  call void @printLine(ptr %dataGoodBuffer_-160.0.reload)
  %43 = call i64 @__readfsqword(i64 40)
  %44 = icmp eq i64 %1, %43
  br i1 %44, label %dec_label_pc_167c3, label %dec_label_pc_167be

dec_label_pc_167be:                               ; preds = %dec_label_pc_1670b
  call void @__stack_chk_fail()
  br label %dec_label_pc_167c3

dec_label_pc_167c3:                               ; preds = %dec_label_pc_167be, %dec_label_pc_1670b
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

