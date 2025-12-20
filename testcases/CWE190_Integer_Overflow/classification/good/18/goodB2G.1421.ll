@global_var_67060 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_be90:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = mul i32 %4, 32768
  %6 = call i32 @rand()
  %7 = xor i32 %6, %5
  %8 = sext i1 %2 to i32
  %storemerge.in = xor i32 %7, %8
  %9 = trunc i32 %storemerge.in to i16
  %10 = sub i16 0, %9
  %11 = icmp slt i16 %10, 0
  %12 = icmp eq i1 %11, false
  %13 = select i1 %12, i16 %10, i16 %9
  %14 = icmp ult i16 %13, 182
  br i1 %14, label %dec_label_pc_bef7, label %dec_label_pc_bf13

dec_label_pc_bef7:                                ; preds = %dec_label_pc_be90
  %15 = urem i32 %storemerge.in, 65536
  %narrow = mul i32 %storemerge.in, 65536
  %sext = mul i32 %narrow, %15
  %16 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_bf22

dec_label_pc_bf13:                                ; preds = %dec_label_pc_be90
  call void @printLine(ptr @global_var_67060)
  br label %dec_label_pc_bf22

dec_label_pc_bf22:                                ; preds = %dec_label_pc_bf13, %dec_label_pc_bef7
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

