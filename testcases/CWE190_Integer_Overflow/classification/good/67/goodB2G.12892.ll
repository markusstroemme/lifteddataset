@global_var_6cca8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_38370:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %storemerge = zext i32 %storemerge.in to i64
  call void @anon0(i64 %storemerge)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_38459:
  %0 = trunc i64 %myStruct to i32
  %sext = mul i64 %myStruct, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = icmp slt i32 %0, -65534
  %3 = trunc i64 %1 to i32
  %4 = icmp sgt i32 %3, 65534
  %or.cond = or i1 %2, %4
  br i1 %or.cond, label %dec_label_pc_38497, label %dec_label_pc_38482

dec_label_pc_38482:                               ; preds = %dec_label_pc_38459
  %5 = mul nsw i64 %1, %1
  %6 = trunc i64 %5 to i32
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_384a7

dec_label_pc_38497:                               ; preds = %dec_label_pc_38459
  call void @printLine(ptr @global_var_6cca8)
  br label %dec_label_pc_384a7

dec_label_pc_384a7:                               ; preds = %dec_label_pc_38497, %dec_label_pc_38482
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

