@global_var_6c818 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_35af4:
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = urem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = mul i32 %1, 1073741824
  %7 = mul i32 %2, 32768
  %8 = xor i32 %7, %6
  %9 = xor i32 %8, %3
  %10 = sext i1 %5 to i32
  %storemerge2.in.le = xor i32 %9, %10
  %stack_var_-32.0.off = add i32 %storemerge2.in.le, 65534
  %11 = icmp ugt i32 %stack_var_-32.0.off, 131068
  br i1 %11, label %dec_label_pc_35b1d, label %dec_label_pc_35b08

dec_label_pc_35b08:                               ; preds = %dec_label_pc_35af4
  %12 = mul i32 %storemerge2.in.le, %storemerge2.in.le
  call void @printUnsignedLine(i32 %12)
  br label %dec_label_pc_35b36

dec_label_pc_35b1d:                               ; preds = %dec_label_pc_35af4
  call void @printLine(ptr @global_var_6c818)
  br label %dec_label_pc_35b36

dec_label_pc_35b36:                               ; preds = %dec_label_pc_35b08, %dec_label_pc_35b1d
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

