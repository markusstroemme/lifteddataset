@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_107d7:
  %storemerge12.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %1, label %dec_label_pc_10856, label %dec_label_pc_107f9

dec_label_pc_107f9:                               ; preds = %dec_label_pc_107d7
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br i1 %5, label %dec_label_pc_10822, label %dec_label_pc_1080e

dec_label_pc_1080e:                               ; preds = %dec_label_pc_107f9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10822:                               ; preds = %dec_label_pc_107f9, %dec_label_pc_10822
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %6 = mul i64 %storemerge3.reload, 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond4 = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_10848, label %dec_label_pc_10822

dec_label_pc_10848:                               ; preds = %dec_label_pc_10822
  call void @free(ptr %2)
  br label %dec_label_pc_108a5

dec_label_pc_10856:                               ; preds = %dec_label_pc_107d7
  store i64 0, ptr %storemerge12.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1087f, label %dec_label_pc_1086b

dec_label_pc_1086b:                               ; preds = %dec_label_pc_10856
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1087f:                               ; preds = %dec_label_pc_10856, %dec_label_pc_1087f
  %storemerge12.reload = load i64, ptr %storemerge12.reg2mem, align 8
  %10 = mul i64 %storemerge12.reload, 8
  %11 = add i64 %10, %3
  %12 = inttoptr i64 %11 to ptr
  store i64 5, ptr %12, align 8
  %13 = add nuw nsw i64 %storemerge12.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge12.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_108a5, label %dec_label_pc_1087f

dec_label_pc_108a5:                               ; preds = %dec_label_pc_1087f, %dec_label_pc_10848
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %dec_label_pc_108c2, label %dec_label_pc_108b3

dec_label_pc_108b3:                               ; preds = %dec_label_pc_108a5
  %16 = load i64, ptr %2, align 8
  call void @printLongLine(i64 %16)
  br label %dec_label_pc_108c2

dec_label_pc_108c2:                               ; preds = %dec_label_pc_108b3, %dec_label_pc_108a5
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
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

