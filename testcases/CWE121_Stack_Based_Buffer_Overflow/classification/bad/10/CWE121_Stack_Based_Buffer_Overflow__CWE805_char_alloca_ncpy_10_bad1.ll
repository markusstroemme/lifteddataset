@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_9f070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_313ce:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3141a

dec_label_pc_3141a:                               ; preds = %dec_label_pc_3141a, %dec_label_pc_313ce
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_31431, label %dec_label_pc_3141a

dec_label_pc_31431:                               ; preds = %dec_label_pc_3141a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3149c

dec_label_pc_3149c:                               ; preds = %dec_label_pc_3149c, %dec_label_pc_31431
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_314b3, label %dec_label_pc_3149c

dec_label_pc_314b3:                               ; preds = %dec_label_pc_3149c
  %8 = load i32, ptr @global_var_9f070, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_3150f, label %dec_label_pc_314fa

dec_label_pc_314fa:                               ; preds = %dec_label_pc_314b3
  %10 = and i64 %5, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_3150f

dec_label_pc_3150f:                               ; preds = %dec_label_pc_314fa, %dec_label_pc_314b3
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %12 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %13 = bitcast ptr %stack_var_-120 to ptr
  %14 = call ptr @strncpy(ptr %dataGoodBuffer_-144.0.reload, ptr nonnull %13, i32 99)
  %15 = ptrtoint ptr %dataGoodBuffer_-144.0.reload to i64
  %16 = add i64 %15, 99
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  call void @printLine(ptr %dataGoodBuffer_-144.0.reload)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_31576, label %dec_label_pc_31571

dec_label_pc_31571:                               ; preds = %dec_label_pc_3150f
  call void @__stack_chk_fail()
  br label %dec_label_pc_31576

dec_label_pc_31576:                               ; preds = %dec_label_pc_31571, %dec_label_pc_3150f
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

