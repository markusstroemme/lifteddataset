@global_var_8cd50 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_26024:
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i64 2, ptr %storemerge1.reg2mem, align 8
  br i1 %1, label %dec_label_pc_260ee, label %dec_label_pc_2604b

dec_label_pc_2604b:                               ; preds = %dec_label_pc_26024
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, 1152921504606846976
  %8 = call i32 @rand()
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, 35184372088832
  %11 = call i32 @rand()
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 1073741824
  %14 = call i32 @rand()
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 32768
  %17 = call i32 @rand()
  %18 = sext i32 %17 to i64
  %19 = sext i1 %4 to i64
  %20 = xor i64 %7, %19
  %21 = xor i64 %20, %10
  %22 = xor i64 %21, %13
  %23 = xor i64 %22, %16
  %storemerge = xor i64 %23, %18
  store i64 %storemerge, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_260ee

dec_label_pc_260ee:                               ; preds = %dec_label_pc_26024, %dec_label_pc_2604b
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %24 = call i32 @globalReturnsTrueOrFalse()
  %25 = icmp eq i32 %24, 0
  %26 = icmp slt i64 %storemerge1.reload, 1
  br i1 %25, label %dec_label_pc_2611c, label %dec_label_pc_260fc

dec_label_pc_260fc:                               ; preds = %dec_label_pc_260ee
  br i1 %26, label %dec_label_pc_2615b, label %dec_label_pc_26103

dec_label_pc_26103:                               ; preds = %dec_label_pc_260fc
  %27 = mul i64 %storemerge1.reload, 2
  call void @printLongLongLine(i64 %27)
  br label %dec_label_pc_2615b

dec_label_pc_2611c:                               ; preds = %dec_label_pc_260ee
  br i1 %26, label %dec_label_pc_2615b, label %dec_label_pc_26123

dec_label_pc_26123:                               ; preds = %dec_label_pc_2611c
  %28 = icmp sgt i64 %storemerge1.reload, 4611686018427387902
  br i1 %28, label %dec_label_pc_2614c, label %dec_label_pc_26133

dec_label_pc_26133:                               ; preds = %dec_label_pc_26123
  %29 = mul i64 %storemerge1.reload, 2
  call void @printLongLongLine(i64 %29)
  br label %dec_label_pc_2615b

dec_label_pc_2614c:                               ; preds = %dec_label_pc_26123
  call void @printLine(ptr @global_var_8cd50)
  br label %dec_label_pc_2615b

dec_label_pc_2615b:                               ; preds = %dec_label_pc_2614c, %dec_label_pc_26133, %dec_label_pc_2611c, %dec_label_pc_26103, %dec_label_pc_260fc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_77ab9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

