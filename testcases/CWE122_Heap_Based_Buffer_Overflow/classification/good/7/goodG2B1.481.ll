@global_var_480c5 = external constant [21 x i8]
@global_var_5e014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_793d:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_7977, label %dec_label_pc_796d

dec_label_pc_796d:                                ; preds = %dec_label_pc_793d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7977:                                ; preds = %dec_label_pc_793d
  %4 = load i32, ptr @global_var_5e014, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %dec_label_pc_7993, label %dec_label_pc_7982

dec_label_pc_7982:                                ; preds = %dec_label_pc_7977
  call void @printLine(ptr @global_var_480c5)
  br label %dec_label_pc_79b4

dec_label_pc_7993:                                ; preds = %dec_label_pc_7977
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_79b4

dec_label_pc_79b4:                                ; preds = %dec_label_pc_7993, %dec_label_pc_7982
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_7a2e, label %dec_label_pc_7a04.lr.ph

dec_label_pc_7a04.lr.ph:                          ; preds = %dec_label_pc_79b4
  %13 = sext i32 %11 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_7a04

dec_label_pc_7a04:                                ; preds = %dec_label_pc_7a04.lr.ph, %dec_label_pc_7a04
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
  br i1 %22, label %dec_label_pc_7a04, label %dec_label_pc_7a2e

dec_label_pc_7a2e:                                ; preds = %dec_label_pc_7a04, %dec_label_pc_79b4
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_7a5f, label %dec_label_pc_7a5a

dec_label_pc_7a5a:                                ; preds = %dec_label_pc_7a2e
  call void @__stack_chk_fail()
  br label %dec_label_pc_7a5f

dec_label_pc_7a5f:                                ; preds = %dec_label_pc_7a5a, %dec_label_pc_7a2e
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

