@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d3cf:
  %storemerge12.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 400)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %1, label %dec_label_pc_d44d, label %dec_label_pc_d3f1

dec_label_pc_d3f1:                                ; preds = %dec_label_pc_d3cf
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br i1 %5, label %dec_label_pc_d41a, label %dec_label_pc_d406

dec_label_pc_d406:                                ; preds = %dec_label_pc_d3f1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d41a:                                ; preds = %dec_label_pc_d3f1, %dec_label_pc_d41a
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %6 = mul i64 %storemerge3.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond4 = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_d43f, label %dec_label_pc_d41a

dec_label_pc_d43f:                                ; preds = %dec_label_pc_d41a
  call void @free(ptr %2)
  br label %dec_label_pc_d49b

dec_label_pc_d44d:                                ; preds = %dec_label_pc_d3cf
  store i64 0, ptr %storemerge12.reg2mem, align 8
  br i1 %5, label %dec_label_pc_d476, label %dec_label_pc_d462

dec_label_pc_d462:                                ; preds = %dec_label_pc_d44d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d476:                                ; preds = %dec_label_pc_d44d, %dec_label_pc_d476
  %storemerge12.reload = load i64, ptr %storemerge12.reg2mem, align 8
  %10 = mul i64 %storemerge12.reload, 4
  %11 = add i64 %10, %3
  %12 = inttoptr i64 %11 to ptr
  store i32 5, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge12.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge12.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_d49b, label %dec_label_pc_d476

dec_label_pc_d49b:                                ; preds = %dec_label_pc_d476, %dec_label_pc_d43f
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %dec_label_pc_d4b6, label %dec_label_pc_d4a9

dec_label_pc_d4a9:                                ; preds = %dec_label_pc_d49b
  %16 = bitcast ptr %2 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_d4b6

dec_label_pc_d4b6:                                ; preds = %dec_label_pc_d4a9, %dec_label_pc_d49b
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

