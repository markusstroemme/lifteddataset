@global_var_6c168 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_31c3e:
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
  call void @anon0(i32 %storemerge.in)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_31d03:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_31d73:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_31db4, label %dec_label_pc_31d88

dec_label_pc_31d88:                               ; preds = %dec_label_pc_31d73
  %1 = icmp ult i32 %data, 2147483647
  br i1 %1, label %dec_label_pc_31d91, label %dec_label_pc_31da5

dec_label_pc_31d91:                               ; preds = %dec_label_pc_31d88
  %2 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_31db4

dec_label_pc_31da5:                               ; preds = %dec_label_pc_31d88
  call void @printLine(ptr @global_var_6c168)
  br label %dec_label_pc_31db4

dec_label_pc_31db4:                               ; preds = %dec_label_pc_31da5, %dec_label_pc_31d91, %dec_label_pc_31d73
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

