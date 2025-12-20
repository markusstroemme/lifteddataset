@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9fec:
  %storemerge12.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %1, label %dec_label_pc_a06b, label %dec_label_pc_a00e

dec_label_pc_a00e:                                ; preds = %dec_label_pc_9fec
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br i1 %5, label %dec_label_pc_a037, label %dec_label_pc_a023

dec_label_pc_a023:                                ; preds = %dec_label_pc_a00e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a037:                                ; preds = %dec_label_pc_a00e, %dec_label_pc_a037
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %6 = mul i64 %storemerge3.reload, 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond4 = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_a05d, label %dec_label_pc_a037

dec_label_pc_a05d:                                ; preds = %dec_label_pc_a037
  call void @free(ptr %2)
  br label %dec_label_pc_a0ba

dec_label_pc_a06b:                                ; preds = %dec_label_pc_9fec
  store i64 0, ptr %storemerge12.reg2mem, align 8
  br i1 %5, label %dec_label_pc_a094, label %dec_label_pc_a080

dec_label_pc_a080:                                ; preds = %dec_label_pc_a06b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a094:                                ; preds = %dec_label_pc_a06b, %dec_label_pc_a094
  %storemerge12.reload = load i64, ptr %storemerge12.reg2mem, align 8
  %10 = mul i64 %storemerge12.reload, 8
  %11 = add i64 %10, %3
  %12 = inttoptr i64 %11 to ptr
  store i64 5, ptr %12, align 8
  %13 = add nuw nsw i64 %storemerge12.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge12.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_a0ba, label %dec_label_pc_a094

dec_label_pc_a0ba:                                ; preds = %dec_label_pc_a094, %dec_label_pc_a05d
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %dec_label_pc_a0d7, label %dec_label_pc_a0c8

dec_label_pc_a0c8:                                ; preds = %dec_label_pc_a0ba
  %16 = load i64, ptr %2, align 8
  call void @printLongLongLine(i64 %16)
  br label %dec_label_pc_a0d7

dec_label_pc_a0d7:                                ; preds = %dec_label_pc_a0c8, %dec_label_pc_a0ba
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
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

