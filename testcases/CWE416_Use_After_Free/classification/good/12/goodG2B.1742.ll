@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d59e:
  %storemerge24.reg2mem = alloca i64, align 8
  %storemerge5.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 400)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %1, label %dec_label_pc_d610, label %dec_label_pc_d5c0

dec_label_pc_d5c0:                                ; preds = %dec_label_pc_d59e
  br i1 %4, label %dec_label_pc_d607.preheader, label %dec_label_pc_d5d5

dec_label_pc_d607.preheader:                      ; preds = %dec_label_pc_d5c0
  %5 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge5.reg2mem, align 8
  br label %dec_label_pc_d5e9

dec_label_pc_d5d5:                                ; preds = %dec_label_pc_d5c0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d5e9:                                ; preds = %dec_label_pc_d5e9, %dec_label_pc_d607.preheader
  %storemerge5.reload = load i64, ptr %storemerge5.reg2mem, align 8
  %6 = mul i64 %storemerge5.reload, 4
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge5.reload, 1
  %exitcond6 = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge5.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_d65e, label %dec_label_pc_d5e9

dec_label_pc_d610:                                ; preds = %dec_label_pc_d59e
  br i1 %4, label %dec_label_pc_d657.preheader, label %dec_label_pc_d625

dec_label_pc_d657.preheader:                      ; preds = %dec_label_pc_d610
  %10 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_d639

dec_label_pc_d625:                                ; preds = %dec_label_pc_d610
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d639:                                ; preds = %dec_label_pc_d639, %dec_label_pc_d657.preheader
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %11 = mul i64 %storemerge24.reload, 4
  %12 = add i64 %11, %10
  %13 = inttoptr i64 %12 to ptr
  store i32 5, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_d65e, label %dec_label_pc_d639

dec_label_pc_d65e:                                ; preds = %dec_label_pc_d5e9, %dec_label_pc_d639
  %15 = bitcast ptr %2 to ptr
  %16 = call i32 @globalReturnsTrueOrFalse()
  %17 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %17)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

