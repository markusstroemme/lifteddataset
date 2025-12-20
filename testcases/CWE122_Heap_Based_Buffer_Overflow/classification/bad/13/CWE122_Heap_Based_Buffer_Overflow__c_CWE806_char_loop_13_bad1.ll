define void @anon0() local_unnamed_addr {
dec_label_pc_8be8:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_8c22, label %dec_label_pc_8c18

dec_label_pc_8c18:                                ; preds = %dec_label_pc_8be8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8c22:                                ; preds = %dec_label_pc_8be8
  %4 = load i32, ptr inttoptr (i64 302080 to ptr), align 1024
  %5 = icmp eq i32 %4, 5
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_8c4e, label %dec_label_pc_8c2d

dec_label_pc_8c2d:                                ; preds = %dec_label_pc_8c22
  %7 = call ptr @memset(ptr %1, i32 65, i32 99)
  %8 = ptrtoint ptr %1 to i64
  %9 = add i64 %8, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_8c4e

dec_label_pc_8c4e:                                ; preds = %dec_label_pc_8c2d, %dec_label_pc_8c22
  %11 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %12 = call i32 @strlen(ptr %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %dec_label_pc_8cc8, label %dec_label_pc_8c9e.lr.ph

dec_label_pc_8c9e.lr.ph:                          ; preds = %dec_label_pc_8c4e
  %14 = sext i32 %12 to i64
  %15 = ptrtoint ptr %1 to i64
  %16 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_8c9e

dec_label_pc_8c9e:                                ; preds = %dec_label_pc_8c9e.lr.ph, %dec_label_pc_8c9e
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
  br i1 %23, label %dec_label_pc_8c9e, label %dec_label_pc_8cc8

dec_label_pc_8cc8:                                ; preds = %dec_label_pc_8c9e, %dec_label_pc_8c4e
  call void @printLine(ptr %11)
  call void @free(ptr %1)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_8cf9, label %dec_label_pc_8cf4

dec_label_pc_8cf4:                                ; preds = %dec_label_pc_8cc8
  call void @__stack_chk_fail()
  br label %dec_label_pc_8cf9

dec_label_pc_8cf9:                                ; preds = %dec_label_pc_8cf4, %dec_label_pc_8cc8
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

