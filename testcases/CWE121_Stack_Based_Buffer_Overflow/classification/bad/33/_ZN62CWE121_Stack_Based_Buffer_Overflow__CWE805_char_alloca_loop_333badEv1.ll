@global_var_1000 = external global ptr
@0 = external global i32
@global_var_fff = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_57207:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge4.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-168 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_57261

dec_label_pc_57261:                               ; preds = %dec_label_pc_57261, %dec_label_pc_57207
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_57278, label %dec_label_pc_57261

dec_label_pc_57278:                               ; preds = %dec_label_pc_57261
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_572e6

dec_label_pc_572e6:                               ; preds = %dec_label_pc_572e6, %dec_label_pc_57278
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_572fd, label %dec_label_pc_572e6

dec_label_pc_572fd:                               ; preds = %dec_label_pc_572e6
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %stack_var_-168 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = load ptr, ptr %stack_var_-168, align 8
  %12 = ptrtoint ptr %11 to i64
  %13 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %14 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_57387

dec_label_pc_57387:                               ; preds = %dec_label_pc_57387, %dec_label_pc_572fd
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %15 = add i64 %storemerge4.reload, %12
  %16 = add i64 %storemerge4.reload, %14
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = inttoptr i64 %15 to ptr
  store i8 %18, ptr %19, align 1
  %20 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond = icmp eq i64 %20, 100
  store i64 %20, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_573ba, label %dec_label_pc_57387

dec_label_pc_573ba:                               ; preds = %dec_label_pc_57387
  %21 = add i64 %12, 99
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  call void @printLine(ptr %11)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %1, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_573e6, label %dec_label_pc_573e1

dec_label_pc_573e1:                               ; preds = %dec_label_pc_573ba
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_573e6

dec_label_pc_573e6:                               ; preds = %dec_label_pc_573e1, %dec_label_pc_573ba
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

