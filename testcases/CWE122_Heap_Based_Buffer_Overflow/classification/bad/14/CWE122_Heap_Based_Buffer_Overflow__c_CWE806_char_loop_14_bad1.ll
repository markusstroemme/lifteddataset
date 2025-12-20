define void @anon0() local_unnamed_addr {
dec_label_pc_8f51:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_8f8b, label %dec_label_pc_8f81

dec_label_pc_8f81:                                ; preds = %dec_label_pc_8f51
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8f8b:                                ; preds = %dec_label_pc_8f51
  %4 = load i32, ptr inttoptr (i64 385100 to ptr), align 4
  %5 = icmp eq i32 %4, 5
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_8fb7, label %dec_label_pc_8f96

dec_label_pc_8f96:                                ; preds = %dec_label_pc_8f8b
  %7 = call ptr @memset(ptr %1, i32 65, i32 99)
  %8 = ptrtoint ptr %1 to i64
  %9 = add i64 %8, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_8fb7

dec_label_pc_8fb7:                                ; preds = %dec_label_pc_8f96, %dec_label_pc_8f8b
  %11 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %12 = call i32 @strlen(ptr %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %dec_label_pc_9031, label %dec_label_pc_9007.lr.ph

dec_label_pc_9007.lr.ph:                          ; preds = %dec_label_pc_8fb7
  %14 = sext i32 %12 to i64
  %15 = ptrtoint ptr %1 to i64
  %16 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_9007

dec_label_pc_9007:                                ; preds = %dec_label_pc_9007.lr.ph, %dec_label_pc_9007
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
  br i1 %23, label %dec_label_pc_9007, label %dec_label_pc_9031

dec_label_pc_9031:                                ; preds = %dec_label_pc_9007, %dec_label_pc_8fb7
  call void @printLine(ptr %11)
  call void @free(ptr %1)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_9062, label %dec_label_pc_905d

dec_label_pc_905d:                                ; preds = %dec_label_pc_9031
  call void @__stack_chk_fail()
  br label %dec_label_pc_9062

dec_label_pc_9062:                                ; preds = %dec_label_pc_905d, %dec_label_pc_9031
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

