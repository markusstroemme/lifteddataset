@global_var_70d9e = external constant [4 x i8]
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2f296:
  %0 = load i32, ptr @global_var_9c068, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2f31f, label %dec_label_pc_2f2fd

dec_label_pc_2f2fd:                               ; preds = %dec_label_pc_2f296
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge.in = xor i32 %11, %12
  %13 = load i32, ptr @global_var_9c068, align 4
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %storemerge.in, 0
  %or.cond = or i1 %14, %15
  br i1 %or.cond, label %dec_label_pc_2f31f, label %dec_label_pc_2f30d

dec_label_pc_2f30d:                               ; preds = %dec_label_pc_2f2fd
  %16 = mul i32 %storemerge.in, 2
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_2f31f

dec_label_pc_2f31f:                               ; preds = %dec_label_pc_2f296, %dec_label_pc_2f30d, %dec_label_pc_2f2fd
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

