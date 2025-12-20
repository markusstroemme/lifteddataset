define void @anon0() local_unnamed_addr {
dec_label_pc_8961:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_899b, label %dec_label_pc_8991

dec_label_pc_8991:                                ; preds = %dec_label_pc_8961
  call void @exit(i32 -1)
  unreachable

dec_label_pc_899b:                                ; preds = %dec_label_pc_8961
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_89cc, label %dec_label_pc_89a9

dec_label_pc_89a9:                                ; preds = %dec_label_pc_899b
  %6 = call ptr @memset(ptr %1, i32 65, i32 99)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_89ed

dec_label_pc_89cc:                                ; preds = %dec_label_pc_899b
  %10 = call ptr @memset(ptr %1, i32 65, i32 49)
  %11 = ptrtoint ptr %1 to i64
  %12 = add i64 %11, 49
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  br label %dec_label_pc_89ed

dec_label_pc_89ed:                                ; preds = %dec_label_pc_89cc, %dec_label_pc_89a9
  %14 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %15 = call i32 @strlen(ptr %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %dec_label_pc_8a67, label %dec_label_pc_8a3d.lr.ph

dec_label_pc_8a3d.lr.ph:                          ; preds = %dec_label_pc_89ed
  %17 = sext i32 %15 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_8a3d

dec_label_pc_8a3d:                                ; preds = %dec_label_pc_8a3d.lr.ph, %dec_label_pc_8a3d
  %.reload = load i64, ptr %.reg2mem, align 8
  %20 = add i64 %.reload, %18
  %21 = inttoptr i64 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = add i64 %.reload, %19
  %24 = inttoptr i64 %23 to ptr
  store i8 %22, ptr %24, align 1
  %25 = add nuw i64 %.reload, 1
  %26 = icmp ult i64 %25, %17
  store i64 %25, ptr %.reg2mem, align 8
  br i1 %26, label %dec_label_pc_8a3d, label %dec_label_pc_8a67

dec_label_pc_8a67:                                ; preds = %dec_label_pc_8a3d, %dec_label_pc_89ed
  call void @printLine(ptr %14)
  call void @free(ptr %1)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_8a98, label %dec_label_pc_8a93

dec_label_pc_8a93:                                ; preds = %dec_label_pc_8a67
  call void @__stack_chk_fail()
  br label %dec_label_pc_8a98

dec_label_pc_8a98:                                ; preds = %dec_label_pc_8a93, %dec_label_pc_8a67
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3cc19:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

