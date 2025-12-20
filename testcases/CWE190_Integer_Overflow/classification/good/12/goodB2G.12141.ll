@global_var_6c6d0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_34eb9:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge2.in = xor i32 %10, %11
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  %storemerge2.in.off = add i32 %storemerge2.in, 65534
  %14 = icmp ugt i32 %storemerge2.in.off, 131068
  br i1 %13, label %dec_label_pc_34fb7, label %dec_label_pc_34f7d

dec_label_pc_34f7d:                               ; preds = %dec_label_pc_34eb9
  br i1 %14, label %dec_label_pc_34fa6, label %dec_label_pc_34f91

dec_label_pc_34f91:                               ; preds = %dec_label_pc_34f7d
  %15 = mul i32 %storemerge2.in, %storemerge2.in
  call void @printUnsignedLine(i32 %15)
  br label %dec_label_pc_34ff1

dec_label_pc_34fa6:                               ; preds = %dec_label_pc_34f7d
  call void @printLine(ptr @global_var_6c6d0)
  br label %dec_label_pc_34ff1

dec_label_pc_34fb7:                               ; preds = %dec_label_pc_34eb9
  br i1 %14, label %dec_label_pc_34fe0, label %dec_label_pc_34fcb

dec_label_pc_34fcb:                               ; preds = %dec_label_pc_34fb7
  %16 = mul i32 %storemerge2.in, %storemerge2.in
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_34ff1

dec_label_pc_34fe0:                               ; preds = %dec_label_pc_34fb7
  call void @printLine(ptr @global_var_6c6d0)
  br label %dec_label_pc_34ff1

dec_label_pc_34ff1:                               ; preds = %dec_label_pc_34fe0, %dec_label_pc_34fcb, %dec_label_pc_34fa6, %dec_label_pc_34f91
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_55105:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

