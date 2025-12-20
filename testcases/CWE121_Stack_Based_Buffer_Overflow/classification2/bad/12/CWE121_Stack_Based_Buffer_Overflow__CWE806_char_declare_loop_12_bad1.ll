define void @anon0() local_unnamed_addr {
dec_label_pc_3e4df:
  %.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3e53f, label %dec_label_pc_3e516

dec_label_pc_3e516:                               ; preds = %dec_label_pc_3e4df
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_3e566

dec_label_pc_3e53f:                               ; preds = %dec_label_pc_3e4df
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %8 = ptrtoint ptr %stack_var_-120 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_3e566

dec_label_pc_3e566:                               ; preds = %dec_label_pc_3e53f, %dec_label_pc_3e516
  %11 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %12 = call i32 @strlen(ptr nonnull %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %dec_label_pc_3e610, label %dec_label_pc_3e5d1.lr.ph

dec_label_pc_3e5d1.lr.ph:                         ; preds = %dec_label_pc_3e566
  %14 = sext i32 %12 to i64
  %15 = ptrtoint ptr %stack_var_-120 to i64
  %16 = ptrtoint ptr %stack_var_-184 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_3e5d1

dec_label_pc_3e5d1:                               ; preds = %dec_label_pc_3e5d1.lr.ph, %dec_label_pc_3e5d1
  %.reload = load i64, ptr %.reg2mem, align 8
  %17 = add i64 %.reload, %15
  %18 = inttoptr i64 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = add i64 %.reload, %16
  %21 = inttoptr i64 %20 to ptr
  store i8 %19, ptr %21, align 1
  %22 = add nuw i64 %.reload, 1
  %23 = icmp ult i64 %22, %14
  store i64 %22, ptr %.reg2mem, align 8
  br i1 %23, label %dec_label_pc_3e5d1, label %dec_label_pc_3e610

dec_label_pc_3e610:                               ; preds = %dec_label_pc_3e5d1, %dec_label_pc_3e566
  call void @printLine(ptr nonnull %11)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_3e638, label %dec_label_pc_3e633

dec_label_pc_3e633:                               ; preds = %dec_label_pc_3e610
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e638

dec_label_pc_3e638:                               ; preds = %dec_label_pc_3e633, %dec_label_pc_3e610
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_7a115:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

