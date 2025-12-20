define void @anon1() local_unnamed_addr {
dec_label_pc_ce16:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 100)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_ce41, label %dec_label_pc_ce37

dec_label_pc_ce37:                                ; preds = %dec_label_pc_ce16
  call void @exit(i32 -1)
  unreachable

dec_label_pc_ce41:                                ; preds = %dec_label_pc_ce16
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %stack_var_-16, align 8
  %9 = ptrtoint ptr %8 to i64
  call void @anon0(i64 %9)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_cf62:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = inttoptr i64 %myStruct to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_d003, label %dec_label_pc_cfd9.lr.ph

dec_label_pc_cfd9.lr.ph:                          ; preds = %dec_label_pc_cf62
  %4 = sext i32 %2 to i64
  %5 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_cfd9

dec_label_pc_cfd9:                                ; preds = %dec_label_pc_cfd9.lr.ph, %dec_label_pc_cfd9
  %.reload = load i64, ptr %.reg2mem, align 8
  %6 = add i64 %.reload, %myStruct
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = add i64 %.reload, %5
  %10 = inttoptr i64 %9 to ptr
  store i8 %8, ptr %10, align 1
  %11 = add nuw i64 %.reload, 1
  %12 = icmp ult i64 %11, %4
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %12, label %dec_label_pc_cfd9, label %dec_label_pc_d003

dec_label_pc_d003:                                ; preds = %dec_label_pc_cfd9, %dec_label_pc_cf62
  call void @printLine(ptr %1)
  %13 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_d034, label %dec_label_pc_d02f

dec_label_pc_d02f:                                ; preds = %dec_label_pc_d003
  call void @__stack_chk_fail()
  br label %dec_label_pc_d034

dec_label_pc_d034:                                ; preds = %dec_label_pc_d02f, %dec_label_pc_d003
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

