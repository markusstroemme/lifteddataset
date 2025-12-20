@global_var_6b588 = external constant [21 x i8]
@global_var_6b5a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c21c = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2b41d:
  %0 = load i32, ptr @global_var_9c21c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2b447, label %dec_label_pc_2b436

dec_label_pc_2b436:                               ; preds = %dec_label_pc_2b41d
  call void @printLine(ptr @global_var_6b588)
  br label %dec_label_pc_2b471

dec_label_pc_2b447:                               ; preds = %dec_label_pc_2b41d
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_2b462, label %dec_label_pc_2b44d

dec_label_pc_2b44d:                               ; preds = %dec_label_pc_2b447
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_2b471

dec_label_pc_2b462:                               ; preds = %dec_label_pc_2b447
  call void @printLine(ptr @global_var_6b5a0)
  br label %dec_label_pc_2b471

dec_label_pc_2b471:                               ; preds = %dec_label_pc_2b462, %dec_label_pc_2b44d, %dec_label_pc_2b436
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2b474:
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
  store i32 0, ptr @global_var_9c21c, align 4
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

