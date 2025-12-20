@global_var_6c648 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_34973:
  %0 = load i32, ptr @global_var_9c068, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_34a1d, label %dec_label_pc_349da

dec_label_pc_349da:                               ; preds = %dec_label_pc_34973
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %.pr = load i32, ptr @global_var_9c068, align 4
  %6 = icmp eq i32 %.pr, 0
  br i1 %6, label %dec_label_pc_34a1d, label %dec_label_pc_349e4

dec_label_pc_349e4:                               ; preds = %dec_label_pc_349da
  %7 = urem i32 %2, 2
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %3, 1073741824
  %10 = mul i32 %4, 32768
  %11 = xor i32 %10, %9
  %12 = xor i32 %11, %5
  %13 = sext i1 %8 to i32
  %storemerge.in = xor i32 %12, %13
  %stack_var_-32.0.off = add i32 %storemerge.in, 65534
  %14 = icmp ugt i32 %stack_var_-32.0.off, 131068
  br i1 %14, label %dec_label_pc_34a0e, label %dec_label_pc_349f8

dec_label_pc_349f8:                               ; preds = %dec_label_pc_349e4
  %15 = mul i32 %storemerge.in, %storemerge.in
  call void @printUnsignedLine(i32 %15)
  br label %dec_label_pc_34a1d

dec_label_pc_34a0e:                               ; preds = %dec_label_pc_349e4
  call void @printLine(ptr @global_var_6c648)
  br label %dec_label_pc_34a1d

dec_label_pc_34a1d:                               ; preds = %dec_label_pc_34973, %dec_label_pc_34a0e, %dec_label_pc_349f8, %dec_label_pc_349da
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

