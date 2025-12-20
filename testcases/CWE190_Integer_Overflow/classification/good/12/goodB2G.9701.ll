@global_var_6b3d0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2a5b3:
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
  %14 = icmp eq i32 %storemerge2.in, -1
  br i1 %13, label %dec_label_pc_2a6a3, label %dec_label_pc_2a677

dec_label_pc_2a677:                               ; preds = %dec_label_pc_2a5b3
  br i1 %14, label %dec_label_pc_2a692, label %dec_label_pc_2a67d

dec_label_pc_2a67d:                               ; preds = %dec_label_pc_2a677
  %15 = add i32 %storemerge2.in, 1
  call void @printUnsignedLine(i32 %15)
  br label %dec_label_pc_2a6cd

dec_label_pc_2a692:                               ; preds = %dec_label_pc_2a677
  call void @printLine(ptr @global_var_6b3d0)
  br label %dec_label_pc_2a6cd

dec_label_pc_2a6a3:                               ; preds = %dec_label_pc_2a5b3
  br i1 %14, label %dec_label_pc_2a6be, label %dec_label_pc_2a6a9

dec_label_pc_2a6a9:                               ; preds = %dec_label_pc_2a6a3
  %16 = add i32 %storemerge2.in, 1
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_2a6cd

dec_label_pc_2a6be:                               ; preds = %dec_label_pc_2a6a3
  call void @printLine(ptr @global_var_6b3d0)
  br label %dec_label_pc_2a6cd

dec_label_pc_2a6cd:                               ; preds = %dec_label_pc_2a6be, %dec_label_pc_2a6a9, %dec_label_pc_2a692, %dec_label_pc_2a67d
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

