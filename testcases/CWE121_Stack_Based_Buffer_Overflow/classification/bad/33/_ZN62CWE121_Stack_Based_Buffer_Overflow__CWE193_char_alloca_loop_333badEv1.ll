@global_var_1000 = external global ptr
@0 = external global i32
@global_var_fff = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3d8d9:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge4.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3d92a

dec_label_pc_3d92a:                               ; preds = %dec_label_pc_3d92a, %dec_label_pc_3d8d9
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3d941, label %dec_label_pc_3d92a

dec_label_pc_3d941:                               ; preds = %dec_label_pc_3d92a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3d9ac

dec_label_pc_3d9ac:                               ; preds = %dec_label_pc_3d9ac, %dec_label_pc_3d941
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3d9c3, label %dec_label_pc_3d9ac

dec_label_pc_3d9c3:                               ; preds = %dec_label_pc_3d9ac
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %stack_var_-88 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = load ptr, ptr %stack_var_-88, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %12 = bitcast ptr %stack_var_-27 to ptr
  %13 = call i32 @strlen(ptr nonnull %12)
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, 1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %dec_label_pc_3da7a, label %dec_label_pc_3da4c.lr.ph

dec_label_pc_3da4c.lr.ph:                         ; preds = %dec_label_pc_3d9c3
  %17 = ptrtoint ptr %11 to i64
  %18 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_3da4c

dec_label_pc_3da4c:                               ; preds = %dec_label_pc_3da4c, %dec_label_pc_3da4c.lr.ph
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %19 = add i64 %storemerge4.reload, %17
  %20 = add i64 %storemerge4.reload, %18
  %21 = inttoptr i64 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = inttoptr i64 %19 to ptr
  store i8 %22, ptr %23, align 1
  %24 = add nuw i64 %storemerge4.reload, 1
  %exitcond = icmp eq i64 %24, %15
  store i64 %24, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3da7a, label %dec_label_pc_3da4c

dec_label_pc_3da7a:                               ; preds = %dec_label_pc_3da4c, %dec_label_pc_3d9c3
  call void @printLine(ptr %11)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_3da9b, label %dec_label_pc_3da96

dec_label_pc_3da96:                               ; preds = %dec_label_pc_3da7a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3da9b

dec_label_pc_3da9b:                               ; preds = %dec_label_pc_3da96, %dec_label_pc_3da7a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

