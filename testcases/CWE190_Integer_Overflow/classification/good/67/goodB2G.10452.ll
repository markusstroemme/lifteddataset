@global_var_6b9a8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2d89e:
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
dec_label_pc_2d987:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_2d9b7, label %dec_label_pc_2d9a2

dec_label_pc_2d9a2:                               ; preds = %dec_label_pc_2d987
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_2d9c6

dec_label_pc_2d9b7:                               ; preds = %dec_label_pc_2d987
  call void @printLine(ptr @global_var_6b9a8)
  br label %dec_label_pc_2d9c6

dec_label_pc_2d9c6:                               ; preds = %dec_label_pc_2d9b7, %dec_label_pc_2d9a2
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

