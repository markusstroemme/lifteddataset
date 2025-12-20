define void @anon0() local_unnamed_addr {
dec_label_pc_85ef:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_8629, label %dec_label_pc_861f

dec_label_pc_861f:                                ; preds = %dec_label_pc_85ef
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8629:                                ; preds = %dec_label_pc_85ef
  %4 = call i32 @globalReturnsTrue()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_8658, label %dec_label_pc_8637

dec_label_pc_8637:                                ; preds = %dec_label_pc_8629
  %6 = call ptr @memset(ptr %1, i32 65, i32 99)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_8658

dec_label_pc_8658:                                ; preds = %dec_label_pc_8637, %dec_label_pc_8629
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_86d2, label %dec_label_pc_86a8.lr.ph

dec_label_pc_86a8.lr.ph:                          ; preds = %dec_label_pc_8658
  %13 = sext i32 %11 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_86a8

dec_label_pc_86a8:                                ; preds = %dec_label_pc_86a8.lr.ph, %dec_label_pc_86a8
  %.reload = load i64, ptr %.reg2mem, align 8
  %16 = add i64 %.reload, %14
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = add i64 %.reload, %15
  %20 = inttoptr i64 %19 to ptr
  store i8 %18, ptr %20, align 1
  %21 = add nuw i64 %.reload, 1
  %22 = icmp ult i64 %21, %13
  store i64 %21, ptr %.reg2mem, align 8
  br i1 %22, label %dec_label_pc_86a8, label %dec_label_pc_86d2

dec_label_pc_86d2:                                ; preds = %dec_label_pc_86a8, %dec_label_pc_8658
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_8703, label %dec_label_pc_86fe

dec_label_pc_86fe:                                ; preds = %dec_label_pc_86d2
  call void @__stack_chk_fail()
  br label %dec_label_pc_8703

dec_label_pc_8703:                                ; preds = %dec_label_pc_86fe, %dec_label_pc_86d2
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3cbfb:
  ret i32 1
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

