@global_var_70d9e = external constant [4 x i8]
@global_var_9c054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2e9e5:
  %0 = load i32, ptr @global_var_9c054, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_2ea70, label %dec_label_pc_2ea4d

dec_label_pc_2ea4d:                               ; preds = %dec_label_pc_2e9e5
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge.in = xor i32 %12, %13
  %14 = load i32, ptr @global_var_9c054, align 4
  %15 = icmp eq i32 %14, 5
  %16 = icmp eq i1 %15, false
  %17 = icmp eq i32 %storemerge.in, 0
  %or.cond = or i1 %16, %17
  br i1 %or.cond, label %dec_label_pc_2ea70, label %dec_label_pc_2ea5e

dec_label_pc_2ea5e:                               ; preds = %dec_label_pc_2ea4d
  %18 = mul i32 %storemerge.in, 2
  call void @printUnsignedLine(i32 %18)
  br label %dec_label_pc_2ea70

dec_label_pc_2ea70:                               ; preds = %dec_label_pc_2e9e5, %dec_label_pc_2ea5e, %dec_label_pc_2ea4d
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

