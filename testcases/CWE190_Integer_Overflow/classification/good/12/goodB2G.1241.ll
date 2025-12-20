@global_var_66ee0 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b132:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge7.in = xor i32 %8, %9
  %storemerge6.in = mul i32 %storemerge7.in, 65536
  %storemerge6 = ashr exact i32 %storemerge6.in, 16
  %10 = call i32 @globalReturnsTrueOrFalse()
  %11 = icmp eq i32 %10, 0
  %12 = trunc i32 %storemerge6 to i16
  %13 = sub i16 0, %12
  %14 = icmp slt i16 %13, 0
  %15 = icmp eq i1 %14, false
  %16 = zext i16 %13 to i32
  %17 = select i1 %15, i32 %16, i32 %storemerge6
  %18 = trunc i32 %17 to i16
  %19 = icmp ult i16 %18, 182
  br i1 %11, label %dec_label_pc_b222, label %dec_label_pc_b1e3

dec_label_pc_b1e3:                                ; preds = %dec_label_pc_b132
  br i1 %19, label %dec_label_pc_b1f5, label %dec_label_pc_b211

dec_label_pc_b1f5:                                ; preds = %dec_label_pc_b1e3
  %20 = urem i32 %storemerge6, 65536
  %sext2 = mul i32 %20, %storemerge6.in
  %21 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %21)
  br label %dec_label_pc_b25f

dec_label_pc_b211:                                ; preds = %dec_label_pc_b1e3
  call void @printLine(ptr @global_var_66ee0)
  br label %dec_label_pc_b25f

dec_label_pc_b222:                                ; preds = %dec_label_pc_b132
  br i1 %19, label %dec_label_pc_b234, label %dec_label_pc_b250

dec_label_pc_b234:                                ; preds = %dec_label_pc_b222
  %22 = urem i32 %storemerge6, 65536
  %sext4 = mul i32 %22, %storemerge6.in
  %23 = ashr exact i32 %sext4, 16
  call void @printIntLine(i32 %23)
  br label %dec_label_pc_b25f

dec_label_pc_b250:                                ; preds = %dec_label_pc_b222
  call void @printLine(ptr @global_var_66ee0)
  br label %dec_label_pc_b25f

dec_label_pc_b25f:                                ; preds = %dec_label_pc_b250, %dec_label_pc_b234, %dec_label_pc_b211, %dec_label_pc_b1f5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_55105:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

