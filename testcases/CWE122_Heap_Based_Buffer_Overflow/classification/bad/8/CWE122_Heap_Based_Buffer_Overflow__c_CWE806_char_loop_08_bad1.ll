define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_7b93:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_7bb1:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_7beb, label %dec_label_pc_7be1

dec_label_pc_7be1:                                ; preds = %dec_label_pc_7bb1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7beb:                                ; preds = %dec_label_pc_7bb1
  %4 = call i32 @staticReturnsTrue()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_7c1a, label %dec_label_pc_7bf9

dec_label_pc_7bf9:                                ; preds = %dec_label_pc_7beb
  %6 = call ptr @memset(ptr %1, i32 65, i32 99)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_7c1a

dec_label_pc_7c1a:                                ; preds = %dec_label_pc_7bf9, %dec_label_pc_7beb
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_7c94, label %dec_label_pc_7c6a.lr.ph

dec_label_pc_7c6a.lr.ph:                          ; preds = %dec_label_pc_7c1a
  %13 = sext i32 %11 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_7c6a

dec_label_pc_7c6a:                                ; preds = %dec_label_pc_7c6a.lr.ph, %dec_label_pc_7c6a
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
  br i1 %22, label %dec_label_pc_7c6a, label %dec_label_pc_7c94

dec_label_pc_7c94:                                ; preds = %dec_label_pc_7c6a, %dec_label_pc_7c1a
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_7cc5, label %dec_label_pc_7cc0

dec_label_pc_7cc0:                                ; preds = %dec_label_pc_7c94
  call void @__stack_chk_fail()
  br label %dec_label_pc_7cc5

dec_label_pc_7cc5:                                ; preds = %dec_label_pc_7cc0, %dec_label_pc_7c94
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

