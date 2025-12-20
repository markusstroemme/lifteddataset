@global_var_6c018 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_311ea:
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
  %11 = icmp eq i32 %storemerge.in, 0
  br i1 %11, label %dec_label_pc_31285, label %dec_label_pc_31259

dec_label_pc_31259:                               ; preds = %dec_label_pc_311ea
  %12 = icmp ult i32 %storemerge.in, 2147483647
  br i1 %12, label %dec_label_pc_31262, label %dec_label_pc_31276

dec_label_pc_31262:                               ; preds = %dec_label_pc_31259
  %13 = mul i32 %storemerge.in, 2
  call void @printUnsignedLine(i32 %13)
  br label %dec_label_pc_31285

dec_label_pc_31276:                               ; preds = %dec_label_pc_31259
  call void @printLine(ptr @global_var_6c018)
  br label %dec_label_pc_31285

dec_label_pc_31285:                               ; preds = %dec_label_pc_31276, %dec_label_pc_31262, %dec_label_pc_311ea
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

