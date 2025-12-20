@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_83ce:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_841a

dec_label_pc_841a:                                ; preds = %dec_label_pc_841a, %dec_label_pc_83ce
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8431, label %dec_label_pc_841a

dec_label_pc_8431:                                ; preds = %dec_label_pc_841a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_849f

dec_label_pc_849f:                                ; preds = %dec_label_pc_849f, %dec_label_pc_8431
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_84b6, label %dec_label_pc_849f

dec_label_pc_84b6:                                ; preds = %dec_label_pc_849f
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  %10 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  store ptr null, ptr %dataBadBuffer_-152, align 8
  %11 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_852c

dec_label_pc_852c:                                ; preds = %dec_label_pc_84b6, %dec_label_pc_852c
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %12 = ptrtoint ptr %storemerge2.reload to i64
  %13 = add i64 %8, %12
  %14 = add i64 %12, %11
  %15 = inttoptr i64 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = inttoptr i64 %13 to ptr
  store i8 %16, ptr %17, align 1
  %18 = load ptr, ptr %dataBadBuffer_-152, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = add i64 %19, 1
  %21 = inttoptr i64 %20 to ptr
  store ptr %21, ptr %dataBadBuffer_-152, align 8
  %22 = icmp ugt ptr %21, inttoptr (i64 99 to ptr)
  store ptr %21, ptr %storemerge2.reg2mem, align 8
  br i1 %22, label %dec_label_pc_855f, label %dec_label_pc_852c

dec_label_pc_855f:                                ; preds = %dec_label_pc_852c
  %23 = add i64 %8, 99
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  call void @printLine(ptr %9)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  br i1 %26, label %dec_label_pc_858b, label %dec_label_pc_8586

dec_label_pc_8586:                                ; preds = %dec_label_pc_855f
  call void @__stack_chk_fail()
  br label %dec_label_pc_858b

dec_label_pc_858b:                                ; preds = %dec_label_pc_8586, %dec_label_pc_855f
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

