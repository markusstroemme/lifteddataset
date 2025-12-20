@global_var_6bd50 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2f929:
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
  %14 = icmp eq i32 %storemerge2.in, 0
  br i1 %13, label %dec_label_pc_2fa21, label %dec_label_pc_2f9ed

dec_label_pc_2f9ed:                               ; preds = %dec_label_pc_2f929
  br i1 %14, label %dec_label_pc_2fa53, label %dec_label_pc_2f9f3

dec_label_pc_2f9f3:                               ; preds = %dec_label_pc_2f9ed
  %15 = icmp ult i32 %storemerge2.in, 2147483647
  br i1 %15, label %dec_label_pc_2f9fc, label %dec_label_pc_2fa10

dec_label_pc_2f9fc:                               ; preds = %dec_label_pc_2f9f3
  %16 = mul i32 %storemerge2.in, 2
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_2fa53

dec_label_pc_2fa10:                               ; preds = %dec_label_pc_2f9f3
  call void @printLine(ptr @global_var_6bd50)
  br label %dec_label_pc_2fa53

dec_label_pc_2fa21:                               ; preds = %dec_label_pc_2f929
  br i1 %14, label %dec_label_pc_2fa53, label %dec_label_pc_2fa27

dec_label_pc_2fa27:                               ; preds = %dec_label_pc_2fa21
  %17 = icmp ult i32 %storemerge2.in, 2147483647
  br i1 %17, label %dec_label_pc_2fa30, label %dec_label_pc_2fa44

dec_label_pc_2fa30:                               ; preds = %dec_label_pc_2fa27
  %18 = mul i32 %storemerge2.in, 2
  call void @printUnsignedLine(i32 %18)
  br label %dec_label_pc_2fa53

dec_label_pc_2fa44:                               ; preds = %dec_label_pc_2fa27
  call void @printLine(ptr @global_var_6bd50)
  br label %dec_label_pc_2fa53

dec_label_pc_2fa53:                               ; preds = %dec_label_pc_2fa44, %dec_label_pc_2fa30, %dec_label_pc_2fa21, %dec_label_pc_2fa10, %dec_label_pc_2f9fc, %dec_label_pc_2f9ed
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

