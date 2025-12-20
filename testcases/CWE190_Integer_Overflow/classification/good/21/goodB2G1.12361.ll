@goodB2G1Static = external local_unnamed_addr global i32
@global_var_6c888 = external constant [21 x i8]
@global_var_6c8a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_35dc4:
  %0 = load i32, ptr @goodB2G1Static, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_35dee, label %dec_label_pc_35ddd

dec_label_pc_35ddd:                               ; preds = %dec_label_pc_35dc4
  call void @printLine(ptr @global_var_6c888)
  br label %dec_label_pc_35e27

dec_label_pc_35dee:                               ; preds = %dec_label_pc_35dc4
  %data.off = add i32 %data, 65534
  %2 = icmp ugt i32 %data.off, 131068
  br i1 %2, label %dec_label_pc_35e18, label %dec_label_pc_35e02

dec_label_pc_35e02:                               ; preds = %dec_label_pc_35dee
  %3 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_35e27

dec_label_pc_35e18:                               ; preds = %dec_label_pc_35dee
  call void @printLine(ptr @global_var_6c8a0)
  br label %dec_label_pc_35e27

dec_label_pc_35e27:                               ; preds = %dec_label_pc_35e18, %dec_label_pc_35e02, %dec_label_pc_35ddd
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_35e2a:
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
  store i32 0, ptr @goodB2G1Static, align 4
  call void @anon0(i32 %storemerge.in)
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

