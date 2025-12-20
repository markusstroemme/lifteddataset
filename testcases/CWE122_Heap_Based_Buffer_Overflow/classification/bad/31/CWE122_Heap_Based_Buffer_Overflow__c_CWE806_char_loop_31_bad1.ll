define void @anon0() local_unnamed_addr {
dec_label_pc_a479:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_a4b3, label %dec_label_pc_a4a9

dec_label_pc_a4a9:                                ; preds = %dec_label_pc_a479
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a4b3:                                ; preds = %dec_label_pc_a479
  %4 = bitcast ptr %1 to ptr
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %4)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_a55e, label %dec_label_pc_a534.lr.ph

dec_label_pc_a534.lr.ph:                          ; preds = %dec_label_pc_a4b3
  %11 = sext i32 %9 to i64
  %12 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_a534

dec_label_pc_a534:                                ; preds = %dec_label_pc_a534.lr.ph, %dec_label_pc_a534
  %.reload = load i64, ptr %.reg2mem, align 8
  %13 = add i64 %.reload, %6
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = add i64 %.reload, %12
  %17 = inttoptr i64 %16 to ptr
  store i8 %15, ptr %17, align 1
  %18 = add nuw i64 %.reload, 1
  %19 = icmp ult i64 %18, %11
  store i64 %18, ptr %.reg2mem, align 8
  br i1 %19, label %dec_label_pc_a534, label %dec_label_pc_a55e

dec_label_pc_a55e:                                ; preds = %dec_label_pc_a534, %dec_label_pc_a4b3
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_a58f, label %dec_label_pc_a58a

dec_label_pc_a58a:                                ; preds = %dec_label_pc_a55e
  call void @__stack_chk_fail()
  br label %dec_label_pc_a58f

dec_label_pc_a58f:                                ; preds = %dec_label_pc_a58a, %dec_label_pc_a55e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

