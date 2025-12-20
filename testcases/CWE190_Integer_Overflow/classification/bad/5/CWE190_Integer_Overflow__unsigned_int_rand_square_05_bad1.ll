@staticTrue = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_339e4:
  %0 = load i32, ptr @staticTrue, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_33a68, label %dec_label_pc_33a4b

dec_label_pc_33a4b:                               ; preds = %dec_label_pc_339e4
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %.pr = load i32, ptr @staticTrue, align 4
  %6 = icmp eq i32 %.pr, 0
  br i1 %6, label %dec_label_pc_33a68, label %dec_label_pc_33a55

dec_label_pc_33a55:                               ; preds = %dec_label_pc_33a4b
  %7 = urem i32 %2, 2
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %3, 1073741824
  %10 = mul i32 %4, 32768
  %11 = xor i32 %10, %9
  %12 = xor i32 %11, %5
  %13 = sext i1 %8 to i32
  %storemerge.in = xor i32 %12, %13
  %14 = mul i32 %storemerge.in, %storemerge.in
  call void @printUnsignedLine(i32 %14)
  br label %dec_label_pc_33a68

dec_label_pc_33a68:                               ; preds = %dec_label_pc_339e4, %dec_label_pc_33a55, %dec_label_pc_33a4b
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

